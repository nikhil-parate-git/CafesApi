package com.cafe.cafe_management_api.impl;

import com.cafe.cafe_management_api.dto.OrderDTO;
import com.cafe.cafe_management_api.dto.OrderRequest;
import com.cafe.cafe_management_api.model.*;
import com.cafe.cafe_management_api.repository.*;
import com.cafe.cafe_management_api.service.OrderService;
import jakarta.persistence.EntityNotFoundException;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private CustomerRepository customerRepository;

    @Autowired
    private MenuRepository menuRepository;

    @Autowired
    private OrderItemRepository orderItemRepository;

    private OrderDTO convertToDTO(Order order) {
        OrderDTO dto = new OrderDTO();
        dto.setId(order.getId());
        dto.setOrderNumber(order.getOrderNumber());
        dto.setTotalAmount(order.getTotalAmount());
        dto.setStatus(order.getStatus());
        dto.setOrderDate(order.getOrderDate());

        if (order.getCustomer() != null) {
            dto.setCustomerId(order.getCustomer().getId());
            dto.setCustomerName(order.getCustomer().getName());
        }

        if (order.getOrderItems() != null) {
            List<OrderDTO.OrderItemDTO> itemDTOs = order.getOrderItems().stream()
                    .map(this::convertOrderItemToDTO)
                    .collect(Collectors.toList());
            dto.setItems(itemDTOs);
        }

        return dto;
    }

    private OrderDTO.OrderItemDTO convertOrderItemToDTO(OrderItem orderItem) {
        OrderDTO.OrderItemDTO itemDTO = new OrderDTO.OrderItemDTO();
        itemDTO.setMenuItemId(orderItem.getMenuItem().getId());
        itemDTO.setMenuItemName(orderItem.getMenuItem().getName());
        itemDTO.setQuantity(orderItem.getQuantity());
        itemDTO.setPrice(orderItem.getPrice());
        itemDTO.setSubtotal(orderItem.getPrice() * orderItem.getQuantity());
        return itemDTO;
    }

    @Override
    @Transactional
    public OrderDTO createOrder(OrderRequest orderRequest) {
        // Validate customer exists
        Customer customer = customerRepository.findById(orderRequest.getCustomerId())
                .orElseThrow(() -> new EntityNotFoundException("Customer not found"));

        // Create order
        Order order = new Order();
        order.setCustomer(customer);
        order.setStatus("PENDING");

        // Calculate total and create order items
        double totalAmount = 0.0;
        List<OrderItem> orderItems = new ArrayList<>();

        for (OrderRequest.OrderItemRequest itemRequest : orderRequest.getItems()) {
            MenuItem menuItem = menuRepository.findById(itemRequest.getMenuItemId())
                    .orElseThrow(() -> new EntityNotFoundException("Menu item not found"));

            if (!menuItem.getAvailable()) {
                throw new RuntimeException("Menu item " + menuItem.getName() + " is not available");
            }

            OrderItem orderItem = new OrderItem();
            orderItem.setOrder(order);
            orderItem.setMenuItem(menuItem);
            orderItem.setQuantity(itemRequest.getQuantity());
            orderItem.setPrice(menuItem.getPrice());

            orderItems.add(orderItem);
            totalAmount += menuItem.getPrice() * itemRequest.getQuantity();
        }

        order.setTotalAmount(totalAmount);
        order.setOrderItems(orderItems);

        // Save order and order items
        Order savedOrder = orderRepository.save(order);
        for (OrderItem item : orderItems) {
            orderItemRepository.save(item);
        }

        return convertToDTO(savedOrder);
    }

    @Override
    public List<OrderDTO> getAllOrders() {
        return orderRepository.findAll().stream()
                .map(this::convertToDTO)
                .collect(Collectors.toList());
    }

    @Override
    public OrderDTO getOrderById(Long id) {
        Order order = orderRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Order not found with id: " + id));
        return convertToDTO(order);
    }

    @Override
    public OrderDTO updateOrderStatus(Long id, String status) {
        Order order = orderRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Order not found with id: " + id));

        // Validate status
        List<String> validStatuses = List.of("PENDING", "CONFIRMED", "PREPARING", "READY", "DELIVERED", "CANCELLED");
        if (!validStatuses.contains(status.toUpperCase())) {
            throw new RuntimeException("Invalid status. Valid statuses are: " + validStatuses);
        }

        order.setStatus(status.toUpperCase());
        Order updatedOrder = orderRepository.save(order);
        return convertToDTO(updatedOrder);
    }

    @Override
    public List<OrderDTO> getOrdersByCustomer(Long customerId) {
        if (!customerRepository.existsById(customerId)) {
            throw new EntityNotFoundException("Customer not found with id: " + customerId);
        }

        return orderRepository.findByCustomerId(customerId).stream()
                .map(this::convertToDTO)
                .collect(Collectors.toList());
    }

    @Override
    public List<OrderDTO> getOrdersByStatus(String status) {
        List<String> validStatuses = List.of("PENDING", "CONFIRMED", "PREPARING", "READY", "DELIVERED", "CANCELLED");
        if (!validStatuses.contains(status.toUpperCase())) {
            throw new RuntimeException("Invalid status. Valid statuses are: " + validStatuses);
        }

        return orderRepository.findByStatus(status.toUpperCase()).stream()
                .map(this::convertToDTO)
                .collect(Collectors.toList());
    }

    @Override
    @Transactional
    public void cancelOrder(Long id) {
        Order order = orderRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Order not found with id: " + id));

        // Only allow cancellation if order is not already delivered
        if ("DELIVERED".equals(order.getStatus())) {
            throw new RuntimeException("Cannot cancel a delivered order");
        }

        order.setStatus("CANCELLED");
        orderRepository.save(order);
    }
}