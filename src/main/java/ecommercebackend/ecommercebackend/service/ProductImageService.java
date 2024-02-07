package ecommercebackend.ecommercebackend.service;

import ecommercebackend.ecommercebackend.entity.ProductImage;
import ecommercebackend.ecommercebackend.repository.ProductImageRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class ProductImageService implements CrudService<ProductImage> {

    private final ProductImageRepository productImageRepository;

    @Override
    public List<ProductImage> getAllItem() {
        return productImageRepository.findAll();
    }

    @Override
    public Optional<ProductImage> getItemById(int id) {
        return productImageRepository.findById(id);
    }

    @Override
    public ProductImage addItem(ProductImage item) {
        return productImageRepository.save(item);
    }

    @Override
    public void deleteItemById(int id) {
        productImageRepository.deleteById(id);
    }

    @Override
    public ProductImage updateItem(ProductImage item) {
        return productImageRepository.save(item);
    }


}
