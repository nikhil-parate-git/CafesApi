package com.cafe.cafe_management_api.dto;

import lombok.Data;
import java.util.List;

@Data
public class OrderRequest {
    private Long customerId;
    private List<OrderItemRequest> items;

    @Data
    public static class OrderItemRequest {
        private Long menuItemId;
        private Integer quantity;
    }
}