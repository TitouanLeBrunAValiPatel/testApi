package ecommercebackend.ecommercebackend.service;

import ecommercebackend.ecommercebackend.entity.User;
import ecommercebackend.ecommercebackend.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class UserService implements CrudService<User> {

    private final UserRepository userRepository;

    @Override
    public List<User> getAllItem() {
        return userRepository.findAll();
    }

    @Override
    public Optional<User> getItemById(int id) {
        return userRepository.findById(id);
    }

    @Override
    public User addItem(User item) {
        return userRepository.save(item);
    }

    @Override
    public void deleteItemById(int id) {
        userRepository.deleteById(id);
    }

    @Override
    public User updateItem(User item) {
        return userRepository.save(item);
    }


}
