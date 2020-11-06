package dao.impl;

import dao.ProductDao;
import jdbc.JDBCConnection;
import model.Product;
import model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

//private int productID;
//private int shopID;
//private String productName;
//private String productImage;
//private double productDescription;
public class ProductDaoImpl implements ProductDao {
    Connection connection = JDBCConnection.getConnection();
    private static final String SELECT_ALL_PRODUCTS = "{call select_all_products()}";


    @Override
    public List<Product> listProduct() {
        List<Product> products = null;

        try {
            products = new ArrayList<>();
            CallableStatement callableStatement = connection.prepareCall(SELECT_ALL_PRODUCTS);
            ResultSet rs = callableStatement.executeQuery();
            while (rs.next()) {
                int productID = rs.getInt("productID");
                int shopID = rs.getInt("shopID");
                String productName = rs.getString("productName");
                String productImage = rs.getString("productImage");
                Double productPrice = rs.getDouble("productPrice");
                String productDescription = rs.getString("productDescription");
                Product product = new Product(productID, shopID, productName, productImage, productPrice,
                        productDescription);
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
