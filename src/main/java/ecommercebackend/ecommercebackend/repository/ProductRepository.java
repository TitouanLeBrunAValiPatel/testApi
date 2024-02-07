package ecommercebackend.ecommercebackend.repository;

import ecommercebackend.ecommercebackend.entity.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Integer> {
    List<Product> findAllByIdCategory(int id_category);
}
