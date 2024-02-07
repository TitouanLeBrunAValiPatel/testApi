package ecommercebackend.ecommercebackend.repository;

import ecommercebackend.ecommercebackend.entity.UserRole;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRolesRepository extends JpaRepository<UserRole, Integer> {
}
