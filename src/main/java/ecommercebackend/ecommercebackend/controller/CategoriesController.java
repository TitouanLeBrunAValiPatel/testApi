package ecommercebackend.ecommercebackend.controller;

import ecommercebackend.ecommercebackend.entity.Category;
import ecommercebackend.ecommercebackend.service.CategoryService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api")
@RequiredArgsConstructor
public class CategoriesController implements CrudController<Category> {

    private final CategoryService categoryService;

    @GetMapping("/categories")
    @Override
    public List<Category> findAllItem() {
        return categoryService.getAllItem();
    }

    @GetMapping("/categories/{id}")
    @Override
    public Optional<Category> findItemById(@PathVariable("id") int id) {
        return categoryService.getItemById(id);
    }

    @PostMapping("/categories")
    @Override
    public Category createItem(@RequestBody Category item) {
        return categoryService.addItem(item);
    }

    @DeleteMapping("/categories/{id}")
    @Override
    public void removeItemById(@PathVariable("id") int id) {
        categoryService.deleteItemById(id);
    }

    @PutMapping("/categories")
    @Override
    public Category updateItem(@RequestBody Category item) {
        return categoryService.updateItem(item);
    }
}
