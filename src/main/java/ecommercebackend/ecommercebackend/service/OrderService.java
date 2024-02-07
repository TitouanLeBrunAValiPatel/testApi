package ecommercebackend.ecommercebackend.service;

import ecommercebackend.ecommercebackend.entity.Order;
import ecommercebackend.ecommercebackend.repository.OrderRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class OrderService implements CrudService<Order> {

    private final OrderRepository orderRepository;

    @Override
    public List<Order> getAllItem() {
        return orderRepository.findAll();
    }

    @Override
    public Optional<Order> getItemById(int id) {
        return orderRepository.findById(id);
    }

    @Override
    public Order addItem(Order item) {
        return orderRepository.save(item);
    }

    @Override
    public void deleteItemById(int id) {
        orderRepository.deleteById(id);
    }

    @Override
    public Order updateItem(Order item) {
        return orderRepository.save(item);
    }


}
