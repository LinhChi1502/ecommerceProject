package dao.impl;

import dao.ProductDao;
import jdbc.JDBCConnection;
import model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDaoImpl implements ProductDao {
    Connection connection = JDBCConnection.getConnection();
    private static final String SELECT_ALL_PRODUCTS = "select * from products";
    private static final String SELECT_10_FIRST_PRODUCTS = "select * from products";


    @Override
    public List<Product> listProduct() {
        List<Product> products = null;

        try {
            products = new ArrayList<>();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_PRODUCTS);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int productID = rs.getInt("productID");
                int shopID = rs.getInt("shopID");
                String productName = rs.getString("productName");
                String productImage = rs.getString("productImage");
                Double productPrice = rs.getDouble("productPrice");
                String productDescription = rs.getString("productDescription");
                String shopName = rs.getString("shopName");
                Product product = new Product(productID, shopID, productName, productImage, productPrice,
                        productDescription, shopName);
                products.add(product);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return products;
    }

    @Override
    public void save(Product product) {

    }

    @Override
    public Product findById(int id) {
        return null;
    }

    @Override
    public void update(Product product) {

    }

    @Override
    public void delete(int id) {

    }
}
