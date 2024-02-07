package ecommercebackend.ecommercebackend.repository;

import ecommercebackend.ecommercebackend.entity.Rating;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RatingRepository extends JpaRepository<Rating, Integer> {
}
