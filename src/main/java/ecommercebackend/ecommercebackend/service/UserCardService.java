package ecommercebackend.ecommercebackend.service;

import ecommercebackend.ecommercebackend.entity.UserCard;
import ecommercebackend.ecommercebackend.repository.UserCardRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class UserCardService implements CrudService<UserCard> {

    private final UserCardRepository userCardRepository;

    @Override
    public List<UserCard> getAllItem() {
        return userCardRepository.findAll();
    }

    @Override
    public Optional<UserCard> getItemById(int id) {
        return userCardRepository.findById(id);
    }

    @Override
    public UserCard addItem(UserCard item) {
        return userCardRepository.save(item);
    }

    @Override
    public void deleteItemById(int id) {
        userCardRepository.deleteById(id);
    }

    @Override
    public UserCard updateItem(UserCard item) {
        return userCardRepository.save(item);
    }


}
