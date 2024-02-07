package ecommercebackend.ecommercebackend.controller;

import ecommercebackend.ecommercebackend.entity.Card;
import ecommercebackend.ecommercebackend.service.CardService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api")
@RequiredArgsConstructor
public class CardsController implements CrudController<Card> {

    private final CardService cardService;

    @GetMapping("/cards")
    @Override
    public List<Card> findAllItem() {
        return cardService.getAllItem();
    }

    @GetMapping("/cards/{id}")
    @Override
    public Optional<Card> findItemById(@PathVariable("id") int id) {
        return cardService.getItemById(id);
    }

    @PostMapping("/cards")
    @Override
    public Card createItem(@RequestBody Card item) {
        return cardService.addItem(item);
    }

    @DeleteMapping("/cards/{id}")
    @Override
    public void removeItemById(@PathVariable("id") int id) {
        cardService.deleteItemById(id);
    }

    @PutMapping("/cards")
    @Override
    public Card updateItem(@RequestBody Card item) {
        return cardService.updateItem(item);
    }
}
