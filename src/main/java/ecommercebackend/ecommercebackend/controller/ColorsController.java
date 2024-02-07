package ecommercebackend.ecommercebackend.controller;

import ecommercebackend.ecommercebackend.entity.Color;
import ecommercebackend.ecommercebackend.service.ColorService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api")
@RequiredArgsConstructor
public class ColorsController implements CrudController<Color> {

    private final ColorService colorService;

    @GetMapping("/colors")
    @Override
    public List<Color> findAllItem() {
        return colorService.getAllItem();
    }

    @GetMapping("/colors/{id}")
    @Override
    public Optional<Color> findItemById(@PathVariable("id") int id) {
        return colorService.getItemById(id);
    }

    @PostMapping("/colors")
    @Override
    public Color createItem(@RequestBody Color item) {
        return colorService.addItem(item);
    }

    @DeleteMapping("/colors/{id}")
    @Override
    public void removeItemById(@PathVariable("id") int id) {
        colorService.deleteItemById(id);
    }

    @PutMapping("/colors")
    @Override
    public Color updateItem(@RequestBody Color item) {
        return colorService.updateItem(item);
    }
}
