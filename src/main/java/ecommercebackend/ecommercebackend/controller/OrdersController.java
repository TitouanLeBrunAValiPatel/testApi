package ecommercebackend.ecommercebackend.controller;

import ecommercebackend.ecommercebackend.entity.Order;
import ecommercebackend.ecommercebackend.service.OrderService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api")
@RequiredArgsConstructor
public class OrdersController implements CrudController<Order> {

    private final OrderService orderService;

    @GetMapping("/orders")
    @Override
    public List<Order> findAllItem() {
        return orderService.getAllItem();
    }

    @GetMapping("/orders/{id}")
    @Override
    public Optional<Order> findItemById(@PathVariable("id") int id) {
        return orderService.getItemById(id);
    }

    @PostMapping("/orders")
    @Override
    public Order createItem(@RequestBody Order item) {
        return orderService.addItem(item);
    }

    @DeleteMapping("/orders/{id}")
    @Override
    public void removeItemById(@PathVariable("id") int id) {
        orderService.deleteItemById(id);
    }

    @PutMapping("/orders")
    @Override
    public Order updateItem(@RequestBody Order item) {
        return orderService.updateItem(item);
    }
}
