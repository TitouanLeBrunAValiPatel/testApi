package ecommercebackend.ecommercebackend.controller;

import java.util.List;
import java.util.Optional;

public interface CrudController<T> {

    List<T> findAllItem();

    Optional<T> findItemById(int id);

    T createItem(T item);

    void removeItemById(int id);

    T updateItem(T item);

}
