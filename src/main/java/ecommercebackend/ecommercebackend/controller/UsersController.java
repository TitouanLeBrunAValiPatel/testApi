package ecommercebackend.ecommercebackend.controller;

import ecommercebackend.ecommercebackend.entity.User;
import ecommercebackend.ecommercebackend.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api")
@RequiredArgsConstructor
public class UsersController implements CrudController<User> {

    private final UserService userService;

    @GetMapping("/users")
    @Override
    public List<User> findAllItem() {
        return userService.getAllItem();
    }

    @GetMapping("/users/{id}")
    @Override
    public Optional<User> findItemById(@PathVariable("id") int id) {
        return userService.getItemById(id);
    }

    @PostMapping("/users")
    @Override
    public User createItem(@RequestBody User item) {
        return userService.addItem(item);
    }

    @DeleteMapping("/users/{id}")
    @Override
    public void removeItemById(@PathVariable("id") int id) {
        userService.deleteItemById(id);
    }

    @PutMapping("/users")
    @Override
    public User updateItem(@RequestBody User item) {
        return userService.updateItem(item);
    }
}
