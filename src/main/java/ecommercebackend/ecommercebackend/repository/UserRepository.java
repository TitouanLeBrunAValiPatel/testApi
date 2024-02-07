package ecommercebackend.ecommercebackend.repository;

import ecommercebackend.ecommercebackend.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Integer> {
}
