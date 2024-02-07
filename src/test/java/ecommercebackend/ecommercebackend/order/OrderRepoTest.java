package ecommercebackend.ecommercebackend.order;

import ecommercebackend.ecommercebackend.entity.Order;
import ecommercebackend.ecommercebackend.repository.OrderRepository;
import ecommercebackend.ecommercebackend.repository.UserRepository;
import jakarta.persistence.EntityManager;
import jakarta.transaction.Transactional;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;

import java.util.Date;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
public class OrderRepoTest {

    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private EntityManager entityManager;

    private Order order;
    private Order savedOrder;

    @BeforeEach
    public void setUp() {
        order = new Order(1, 1, new Date(), 1);
    }


    @AfterEach
    public void tearDown() {
        entityManager.flush();
        entityManager.clear();
    }

    @Test
    @Transactional
    public void saveOrderTest() {

        orderRepository.save(order);
        savedOrder = orderRepository.findById(order.getUserId()).orElse(null);

        assertThat(savedOrder).isNotNull();
        assertThat(savedOrder).isNotNull();
        assertThat(savedOrder.getUserId()).isEqualTo(order.getUserId());
        assertThat(savedOrder.getNumber()).isEqualTo(order.getNumber());

    }

    @Test
    @Transactional
    public void findOrderTest() {

        orderRepository.save(order);
        savedOrder = orderRepository.findById(order.getUserId()).orElse(null);

        assertThat(savedOrder).isNotNull();

        assertThat(savedOrder).isNotNull();
        assertThat(savedOrder.getUserId()).isEqualTo(order.getUserId());
        assertThat(savedOrder.getNumber()).isEqualTo(order.getNumber());

    }

    @Test
    @Transactional
    public void findAllOrderTest() {

        orderRepository.save(order);
        savedOrder = orderRepository.findById(order.getUserId()).orElse(null);

        List<Order> orders = orderRepository.findAll();
        assertThat(orders.get(0)).isNotNull();
    }

    @Test
    @Transactional
    public void deleteOrderTest() {

        orderRepository.save(order);

        orderRepository.deleteById(order.getUserId());

        savedOrder = orderRepository.findById(order.getUserId()).orElse(null);

        assertThat(savedOrder).isNull();
    }

    @Test
    @Transactional
    public void updateOrderTest() {

        orderRepository.save(order);
        savedOrder = orderRepository.findById(order.getUserId()).orElse(null);

        Order modifedOrder = new Order(order.getUserId(), 1, order.getDate(), 12);

        orderRepository.save(modifedOrder);

        savedOrder = orderRepository.findById(order.getUserId()).orElse(null);

        assertThat(savedOrder).isEqualTo(modifedOrder);
    }
}
