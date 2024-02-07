package ecommercebackend.ecommercebackend.controller;

import ecommercebackend.ecommercebackend.entity.Image;
import ecommercebackend.ecommercebackend.service.ImageService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api")
@RequiredArgsConstructor
public class ImagesController implements CrudController<Image> {

    private final ImageService imageService;

    @GetMapping("/images")
    @Override
    public List<Image> findAllItem() {
        return imageService.getAllItem();
    }

    @GetMapping("/images/{id}")
    @Override
    public Optional<Image> findItemById(@PathVariable("id") int id) {
        return imageService.getItemById(id);
    }

    @PostMapping("/images")
    @Override
    public Image createItem(@RequestBody Image item) {
        return imageService.addItem(item);
    }

    @DeleteMapping("/images/{id}")
    @Override
    public void removeItemById(@PathVariable("id") int id) {
        imageService.deleteItemById(id);
    }

    @PutMapping("/images")
    @Override
    public Image updateItem(@RequestBody Image item) {
        return imageService.updateItem(item);
    }
}
