package ecommercebackend.ecommercebackend.service;

import ecommercebackend.ecommercebackend.entity.UserRole;
import ecommercebackend.ecommercebackend.repository.UserRolesRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class UserRolesService implements CrudService<UserRole> {

    private final UserRolesRepository userRolesRepository;

    @Override
    public List<UserRole> getAllItem() {
        return userRolesRepository.findAll();
    }

    @Override
    public Optional<UserRole> getItemById(int id) {
        return userRolesRepository.findById(id);
    }

    @Override
    public UserRole addItem(UserRole item) {
        return userRolesRepository.save(item);
    }

    @Override
    public void deleteItemById(int id) {
        userRolesRepository.deleteById(id);
    }

    @Override
    public UserRole updateItem(UserRole item) {
        return userRolesRepository.save(item);
    }


}
