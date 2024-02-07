package ecommercebackend.ecommercebackend.service;

import java.util.List;
import java.util.Optional;

public interface CrudService<T> {

    List<T> getAllItem();

    Optional<T> getItemById(int id);

    T addItem(T item);

    void deleteItemById(int id);

    T updateItem(T item);

}
