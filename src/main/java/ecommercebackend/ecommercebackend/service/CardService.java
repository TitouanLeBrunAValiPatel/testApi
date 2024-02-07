package ecommercebackend.ecommercebackend.service;

import ecommercebackend.ecommercebackend.entity.Card;
import ecommercebackend.ecommercebackend.repository.CardRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class CardService implements CrudService<Card> {

    private final CardRepository cardRepository;

    @Override
    public List<Card> getAllItem() {
        return cardRepository.findAll();
    }

    @Override
    public Optional<Card> getItemById(int id) {
        return cardRepository.findById(id);
    }

    @Override
    public Card addItem(Card item) {
        return cardRepository.save(item);
    }

    @Override
    public void deleteItemById(int id) {
        cardRepository.deleteById(id);
    }

    @Override
    public Card updateItem(Card item) {
        return cardRepository.save(item);
    }


}
