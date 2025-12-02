package com.cafe.cafe_management_api.service;

import com.cafe.cafe_management_api.dto.OrderDTO;
import com.cafe.cafe_management_api.dto.OrderRequest;
import java.util.List;

public interface OrderService {
    List<OrderDTO> getAllOrders();
    OrderDTO getOrderById(Long id);
    OrderDTO createOrder(OrderRequest orderRequest);
    OrderDTO updateOrderStatus(Long id, String status);
    List<OrderDTO> getOrdersByCustomer(Long customerId);
    List<OrderDTO> getOrdersByStatus(String status);
    void cancelOrder(Long id);
}