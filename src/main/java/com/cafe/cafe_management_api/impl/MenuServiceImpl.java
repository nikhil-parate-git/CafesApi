package com.cafe.cafe_management_api.impl;
import com.cafe.cafe_management_api.dto.MenuItemDTO;
import com.cafe.cafe_management_api.model.Category;
import com.cafe.cafe_management_api.model.MenuItem;
import com.cafe.cafe_management_api.repository.CategoryRepository;
import com.cafe.cafe_management_api.repository.MenuRepository;
import com.cafe.cafe_management_api.service.MenuService;
import jakarta.persistence.EntityNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class MenuServiceImpl implements MenuService {

    @Autowired
    private MenuRepository menuRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    private MenuItemDTO convertToDTO(MenuItem menuItem) {
        MenuItemDTO dto = new MenuItemDTO();
        dto.setId(menuItem.getId());
        dto.setName(menuItem.getName());
        dto.setDescription(menuItem.getDescription());
        dto.setPrice(menuItem.getPrice());
        dto.setImageUrl(menuItem.getImageUrl());
        dto.setAvailable(menuItem.getAvailable());

        if (menuItem.getCategory() != null) {
            dto.setCategoryId(menuItem.getCategory().getId());
            dto.setCategoryName(menuItem.getCategory().getName());
        }

        return dto;
    }

    private MenuItem convertToEntity(MenuItemDTO dto) {
        MenuItem menuItem = new MenuItem();
        menuItem.setId(dto.getId());
        menuItem.setName(dto.getName());
        menuItem.setDescription(dto.getDescription());
        menuItem.setPrice(dto.getPrice());
        menuItem.setImageUrl(dto.getImageUrl());
        menuItem.setAvailable(dto.getAvailable() != null ? dto.getAvailable() : true);

        if (dto.getCategoryId() != null) {
            Category category = categoryRepository.findById(dto.getCategoryId())
                    .orElseThrow(() -> new EntityNotFoundException("Category not found"));
            menuItem.setCategory(category);
        }

        return menuItem;
    }

    @Override
    public List<MenuItemDTO> getAllMenuItems() {
        return menuRepository.findAll().stream()
                .map(this::convertToDTO)
                .collect(Collectors.toList());
    }

    @Override
    public MenuItemDTO getMenuItemById(Long id) {
        MenuItem menuItem = menuRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Menu item not found"));
        return convertToDTO(menuItem);
    }

    @Override
    public MenuItemDTO createMenuItem(MenuItemDTO menuItemDTO) {
        MenuItem menuItem = convertToEntity(menuItemDTO);
        MenuItem saved = menuRepository.save(menuItem);
        return convertToDTO(saved);
    }

    @Override
    public MenuItemDTO updateMenuItem(Long id, MenuItemDTO menuItemDTO) {
        MenuItem existing = menuRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Menu item not found"));

        existing.setName(menuItemDTO.getName());
        existing.setDescription(menuItemDTO.getDescription());
        existing.setPrice(menuItemDTO.getPrice());
        existing.setAvailable(menuItemDTO.getAvailable());
        existing.setImageUrl(menuItemDTO.getImageUrl());

        if (menuItemDTO.getCategoryId() != null) {
            Category category = categoryRepository.findById(menuItemDTO.getCategoryId())
                    .orElseThrow(() -> new EntityNotFoundException("Category not found"));
            existing.setCategory(category);
        }

        MenuItem updated = menuRepository.save(existing);
        return convertToDTO(updated);
    }

    @Override
    public void deleteMenuItem(Long id) {
        if (!menuRepository.existsById(id)) {
            throw new EntityNotFoundException("Menu item not found");
        }
        menuRepository.deleteById(id);
    }

    @Override
    public List<MenuItemDTO> getMenuItemsByCategory(Long categoryId) {
        return menuRepository.findByCategoryId(categoryId).stream()
                .map(this::convertToDTO)
                .collect(Collectors.toList());
    }

    @Override
    public List<MenuItemDTO> searchMenuItems(String query) {
        return menuRepository.findByNameContainingIgnoreCase(query).stream()
                .map(this::convertToDTO)
                .collect(Collectors.toList());
    }

    @Override
    public List<MenuItemDTO> getAvailableMenuItems() {
        return menuRepository.findByAvailableTrue().stream()
                .map(this::convertToDTO)
                .collect(Collectors.toList());
    }
}