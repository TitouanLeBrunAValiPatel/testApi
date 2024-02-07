package ecommercebackend.ecommercebackend.controller;

import ecommercebackend.ecommercebackend.entity.ProductImage;
import ecommercebackend.ecommercebackend.service.ProductImageService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api")
@RequiredArgsConstructor
public class ProductsImagesController implements CrudController<ProductImage> {

    private final ProductImageService productImageService;

    @GetMapping("/products/images")
    @Override
    public List<ProductImage> findAllItem() {
        return productImageService.getAllItem();
    }

    @GetMapping("/products/image/{id}")
    @Override
    public Optional<ProductImage> findItemById(@PathVariable("id") int id) {
        return productImageService.getItemById(id);
    }

    @PostMapping("/products/image")
    @Override
    public ProductImage createItem(@RequestBody ProductImage item) {
        return productImageService.addItem(item);
    }

    @DeleteMapping("/products/image/{id}")
    @Override
    public void removeItemById(@PathVariable("id") int id) {
        productImageService.deleteItemById(id);
    }

    @PutMapping("/products/image")
    @Override
    public ProductImage updateItem(@RequestBody ProductImage item) {
        return productImageService.updateItem(item);
    }
}
