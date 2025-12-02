package com.cafe.cafe_management_api.service;
import com.cafe.cafe_management_api.dto.MenuItemDTO;
import com.cafe.cafe_management_api.model.MenuItem;
import java.util.List;

public interface MenuService {
    List<MenuItemDTO> getAllMenuItems();
    MenuItemDTO getMenuItemById(Long id);
    MenuItemDTO createMenuItem(MenuItemDTO menuItemDTO);
    MenuItemDTO updateMenuItem(Long id, MenuItemDTO menuItemDTO);
    void deleteMenuItem(Long id);
    List<MenuItemDTO> getMenuItemsByCategory(Long categoryId);
    List<MenuItemDTO> searchMenuItems(String query);
    List<MenuItemDTO> getAvailableMenuItems();
}