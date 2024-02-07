package ecommercebackend.ecommercebackend.service;

import ecommercebackend.ecommercebackend.entity.Category;
import ecommercebackend.ecommercebackend.repository.CategoryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class CategoryService implements CrudService<Category> {

    private final CategoryRepository categoryRepository;

    @Override
    public List<Category> getAllItem() {
        return categoryRepository.findAll();
    }

    @Override
    public Optional<Category> getItemById(int id) {
        return categoryRepository.findById(id);
    }

    @Override
    public Category addItem(Category item) {
        return categoryRepository.save(item);
    }

    @Override
    public void deleteItemById(int id) {
        categoryRepository.deleteById(id);
    }

    @Override
    public Category updateItem(Category item) {
        return categoryRepository.save(item);
    }


}
