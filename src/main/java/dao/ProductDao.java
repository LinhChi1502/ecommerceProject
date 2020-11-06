package dao;

import model.Product;
import model.User;

import java.util.List;

public interface ProductDao {
    List<Product> listProduct();

    void save(Product product);

    Product findById(int id);

    void update(Product product);

    void delete(int id);
}
