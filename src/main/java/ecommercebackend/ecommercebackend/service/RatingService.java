package ecommercebackend.ecommercebackend.service;

import ecommercebackend.ecommercebackend.entity.Rating;
import ecommercebackend.ecommercebackend.repository.RatingRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class RatingService implements CrudService<Rating> {

    private final RatingRepository ratingRepository;

    @Override
    public List<Rating> getAllItem() {
        return ratingRepository.findAll();
    }

    @Override
    public Optional<Rating> getItemById(int id) {
        return ratingRepository.findById(id);
    }

    @Override
    public Rating addItem(Rating item) {
        return ratingRepository.save(item);
    }

    @Override
    public void deleteItemById(int id) {
        ratingRepository.deleteById(id);
    }

    @Override
    public Rating updateItem(Rating item) {
        return ratingRepository.save(item);
    }


}
