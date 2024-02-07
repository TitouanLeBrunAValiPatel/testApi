package ecommercebackend.ecommercebackend.controller;

import ecommercebackend.ecommercebackend.entity.UserRole;
import ecommercebackend.ecommercebackend.service.UserRolesService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api")
@RequiredArgsConstructor
public class UsersRolesController implements CrudController<UserRole> {

    private final UserRolesService userRolesService;

    @GetMapping("/user_roles")
    @Override
    public List<UserRole> findAllItem() {
        return userRolesService.getAllItem();
    }

    @GetMapping("/user_roles/{id}")
    @Override
    public Optional<UserRole> findItemById(@PathVariable("id") int id) {
        return userRolesService.getItemById(id);
    }

    @PostMapping("/user_roles")
    @Override
    public UserRole createItem(@RequestBody UserRole item) {
        return userRolesService.addItem(item);
    }

    @DeleteMapping("/user_roles/{id}")
    @Override
    public void removeItemById(@PathVariable("id") int id) {
        userRolesService.deleteItemById(id);
    }

    @PutMapping("/user_roles")
    @Override
    public UserRole updateItem(@RequestBody UserRole item) {
        return userRolesService.updateItem(item);
    }
}
