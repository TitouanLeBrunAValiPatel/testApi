package ecommercebackend.ecommercebackend.service;

import ecommercebackend.ecommercebackend.entity.Color;
import ecommercebackend.ecommercebackend.repository.ColorRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class ColorService implements CrudService<Color> {

    private final ColorRepository colorRepository;

    @Override
    public List<Color> getAllItem() {
        return colorRepository.findAll();
    }

    @Override
    public Optional<Color> getItemById(int id) {
        return colorRepository.findById(id);
    }

    @Override
    public Color addItem(Color item) {
        return colorRepository.save(item);
    }

    @Override
    public void deleteItemById(int id) {
        colorRepository.deleteById(id);
    }

    @Override
    public Color updateItem(Color item) {
        return colorRepository.save(item);
    }


}
