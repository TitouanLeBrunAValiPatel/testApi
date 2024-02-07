package ecommercebackend.ecommercebackend.controller;

import ecommercebackend.ecommercebackend.entity.UserCard;
import ecommercebackend.ecommercebackend.service.UserCardService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api")
@RequiredArgsConstructor
public class UsersCardsController implements CrudController<UserCard> {

    private final UserCardService userCardService;

    @GetMapping("/user_cards")
    @Override
    public List<UserCard> findAllItem() {
        return userCardService.getAllItem();
    }

    @GetMapping("/user_cards/{id}")
    @Override
    public Optional<UserCard> findItemById(@PathVariable("id") int id) {
        return userCardService.getItemById(id);
    }

    @PostMapping("/user_cards")
    @Override
    public UserCard createItem(@RequestBody UserCard item) {
        return userCardService.addItem(item);
    }

    @DeleteMapping("/user_cards/{id}")
    @Override
    public void removeItemById(@PathVariable("id") int id) {
        userCardService.deleteItemById(id);
    }

    @PutMapping("/user_cards")
    @Override
    public UserCard updateItem(@RequestBody UserCard item) {
        return userCardService.updateItem(item);
    }
}
