package ecommercebackend.ecommercebackend.repository;

import ecommercebackend.ecommercebackend.entity.Card;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CardRepository extends JpaRepository<Card, Integer> {
}
