package com.cafe.cafe_management_api.dto;

import lombok.Data;

@Data
public class MenuItemDTO {
    private Long id;
    private String name;
    private String description;
    private Double price;
    private Long categoryId;
    private String categoryName;
    private String imageUrl;
    private Boolean available;
}
