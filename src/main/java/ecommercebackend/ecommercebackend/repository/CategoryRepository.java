package ecommercebackend.ecommercebackend.repository;

import ecommercebackend.ecommercebackend.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoryRepository extends JpaRepository<Category, Integer> {
}
