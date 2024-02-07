package ecommercebackend.ecommercebackend.controller;

import ecommercebackend.ecommercebackend.entity.Rating;
import ecommercebackend.ecommercebackend.service.RatingService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api")
@RequiredArgsConstructor
public class RatingsController implements CrudController<Rating> {

    private final RatingService ratingService;

    @GetMapping("/ratings")
    @Override
    public List<Rating> findAllItem() {
        return ratingService.getAllItem();
    }

    @GetMapping("/ratings/{id}")
    @Override
    public Optional<Rating> findItemById(@PathVariable("id") int id) {
        return ratingService.getItemById(id);
    }

    @PostMapping("/ratings")
    @Override
    public Rating createItem(@RequestBody Rating item) {
        return ratingService.addItem(item);
    }

    @DeleteMapping("/ratings/{id}")
    @Override
    public void removeItemById(@PathVariable("id") int id) {
        ratingService.deleteItemById(id);
    }

    @PutMapping("/ratings")
    @Override
    public Rating updateItem(@RequestBody Rating item) {
        return ratingService.updateItem(item);
    }
}
