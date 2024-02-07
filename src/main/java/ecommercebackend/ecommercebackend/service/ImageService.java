package ecommercebackend.ecommercebackend.service;

import ecommercebackend.ecommercebackend.entity.Image;
import ecommercebackend.ecommercebackend.repository.ImageRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class ImageService implements CrudService<Image> {

    private final ImageRepository imageRepository;

    @Override
    public List<Image> getAllItem() {
        return imageRepository.findAll();
    }

    @Override
    public Optional<Image> getItemById(int id) {
        return imageRepository.findById(id);
    }

    @Override
    public Image addItem(Image item) {
        return imageRepository.save(item);
    }

    @Override
    public void deleteItemById(int id) {
        imageRepository.deleteById(id);
    }

    @Override
    public Image updateItem(Image item) {
        return imageRepository.save(item);
    }


}
