package ecommercebackend.ecommercebackend.controller;

import ecommercebackend.ecommercebackend.entity.CompleteProduct;
import ecommercebackend.ecommercebackend.entity.Product;
import ecommercebackend.ecommercebackend.service.ProductService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api")
@RequiredArgsConstructor
public class ProductsController implements CrudController<Product> {

    private final ProductService productService;

    @GetMapping("/products")
    @Override
    public List<Product> findAllItem() {
        return productService.getAllItem();
    }

    @GetMapping("/products/category/id/{id}")
    public List<Product> findAllItemByProductId(@PathVariable("id") int id) {
        return productService.getAllItemByCategoryId(id);
    }

    @GetMapping("/products/{product_id}/complete")
    public CompleteProduct findAllItemCompleteByProductId(@PathVariable("product_id") int product_id) {
        return productService.getCompleteItemById(product_id);
    }

    @GetMapping("/products/{id}")
    @Override
    public Optional<Product> findItemById(@PathVariable("id") int id) {
        return productService.getItemById(id);
    }

    @PostMapping("/products")
    @Override
    public Product createItem(@RequestBody Product item) {
        return productService.addItem(item);
    }

    @DeleteMapping("/products/{id}")
    @Override
    public void removeItemById(@PathVariable("id") int id) {
        productService.deleteItemById(id);
    }

    @PutMapping("/products")
    @Override
    public Product updateItem(@RequestBody Product item) {
        return productService.updateItem(item);
    }
}
