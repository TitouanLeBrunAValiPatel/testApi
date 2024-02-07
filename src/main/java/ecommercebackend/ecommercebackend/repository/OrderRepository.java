package ecommercebackend.ecommercebackend.repository;

import ecommercebackend.ecommercebackend.entity.Order;
import org.springframework.data.jpa.repository.JpaRepository;

public interface OrderRepository extends JpaRepository<Order, Integer> {
}
