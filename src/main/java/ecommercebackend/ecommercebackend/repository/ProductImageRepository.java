package ecommercebackend.ecommercebackend.repository;

import ecommercebackend.ecommercebackend.entity.ProductImage;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductImageRepository extends JpaRepository<ProductImage, Integer> {
    ProductImage getByProductId(int id_product);
}
