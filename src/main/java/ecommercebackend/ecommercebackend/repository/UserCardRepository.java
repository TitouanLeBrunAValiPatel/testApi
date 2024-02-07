package ecommercebackend.ecommercebackend.repository;

import ecommercebackend.ecommercebackend.entity.UserCard;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserCardRepository extends JpaRepository<UserCard, Integer> {
}
