package com.cafe.cafe_management_api.controller;

import com.cafe.cafe_management_api.dto.MenuItemDTO;
import com.cafe.cafe_management_api.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/menu")
@CrossOrigin(origins = "*")
public class MenuController {

    @Autowired
    private MenuService menuService;

    @GetMapping
    public ResponseEntity<List<MenuItemDTO>> getAllMenuItems() {
        return ResponseEntity.ok(menuService.getAllMenuItems());
    }

    @GetMapping("/available")
    public ResponseEntity<List<MenuItemDTO>> getAvailableMenuItems() {
        return ResponseEntity.ok(menuService.getAvailableMenuItems());
    }

    @GetMapping("/{id}")
    public ResponseEntity<MenuItemDTO> getMenuItemById(@PathVariable Long id) {
        return ResponseEntity.ok(menuService.getMenuItemById(id));
    }

    @PostMapping
    public ResponseEntity<MenuItemDTO> createMenuItem(@RequestBody MenuItemDTO menuItemDTO) {
        return ResponseEntity.ok(menuService.createMenuItem(menuItemDTO));
    }

    @PutMapping("/{id}")
    public ResponseEntity<MenuItemDTO> updateMenuItem(@PathVariable Long id, @RequestBody MenuItemDTO menuItemDTO) {
        return ResponseEntity.ok(menuService.updateMenuItem(id, menuItemDTO));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteMenuItem(@PathVariable Long id) {
        menuService.deleteMenuItem(id);
        return ResponseEntity.noContent().build();
    }

    @GetMapping("/category/{categoryId}")
    public ResponseEntity<List<MenuItemDTO>> getMenuItemsByCategory(@PathVariable Long categoryId) {
        return ResponseEntity.ok(menuService.getMenuItemsByCategory(categoryId));
    }

    @GetMapping("/search")
    public ResponseEntity<List<MenuItemDTO>> searchMenuItems(@RequestParam String query) {
        return ResponseEntity.ok(menuService.searchMenuItems(query));
    }
}