package com.cafe.cafe_management_api.dto;

import lombok.Data;
import java.time.LocalDateTime;
import java.util.List;

@Data
public class OrderDTO {
    private Long id;
    private String orderNumber;
    private Long customerId;
    private String customerName;
    private Double totalAmount;
    private String status;
    private LocalDateTime orderDate;
    private List<OrderItemDTO> items;

    @Data
    public static class OrderItemDTO {
        private Long menuItemId;
        private String menuItemName;
        private Integer quantity;
        private Double price;
        private Double subtotal;
    }
}
