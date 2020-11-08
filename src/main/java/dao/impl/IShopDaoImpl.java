package dao.impl;

import dao.IShopDao;
import jdbc.JDBCConnection;
import model.Product;
import model.Shop;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class IShopDaoImpl implements IShopDao {
    Connection connection = JDBCConnection.getConnection();
    private static final String SELECT_ALL_SHOPS = "select * from shop";
    private static final String SELECT_ALL_SHOPS_LIMIT_10 = "select * from shop limit 10";
    private static final String SELECT_ALL_SHOP_PRODUCTS =
            "select * from products join shop s on s.shopID = products.shopID where s.shopID = ?";
    private static final String FIND_SHOP_BY_ID = "select * from shop where shopID = ?";
    @Override
    public List<Shop> listShop() {
        List<Shop> shops = null;
        try {
            shops = new ArrayList<>();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_SHOPS);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int shopID = rs.getInt("shopID");
                String shopName = rs.getString("shopName");

                String shopEmail = rs.getString("shopEmail");
                String shopPass = rs.getString("shopPass");
                String address = rs.getString("address");
                Shop shop = new Shop(shopID, shopName,  shopEmail, shopPass, address);
                shops.add(shop);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return shops;
    }

    @Override
    public List<Shop> listShopLimit10() {
        List<Shop> shopLimitList = null;
        try {
            shopLimitList = new ArrayList<>();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_SHOPS_LIMIT_10);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int shopID = rs.getInt("shopID");
                String shopName = rs.getString("shopName");

                String shopEmail = rs.getString("shopEmail");
                String shopPass = rs.getString("shopPass");
                String address = rs.getString("address");
                Shop shop = new Shop(shopID, shopName,  shopEmail, shopPass, address);
                shopLimitList.add(shop);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return shopLimitList;
    }

    @Override
    public List<Product> listShopProduct(int shopID) {
        List<Product> shopProducts = null;
        try {
            shopProducts = new ArrayList<>();
            PreparedStatement ps = connection.prepareStatement(SELECT_ALL_SHOP_PRODUCTS);
            ps.setInt(1, shopID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int productID = rs.getInt("productID");
                String productName = rs.getString("productName");
                String productImage = rs.getString("productImage");
                double productPrice = rs.getDouble("productPrice");
                String productDescription = rs.getString("productDescription");
                String shopName = rs.getString("shopName");
                int productQuantity = rs.getInt("productQuantity");
                Product product = new Product(productID,shopID,productName,productImage,productPrice,
                        productDescription,shopName,productQuantity);
                shopProducts.add(product);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return shopProducts;
    }

    @Override
    public Shop findShopById(int shopID) {
        Shop shop = null;
        try {
            PreparedStatement ps = connection.prepareStatement(FIND_SHOP_BY_ID);
            ps.setInt(1, shopID);
            ResultSet rs = ps.executeQuery();;
            while (rs.next()) {
                String shopName = rs. getString("shopName");
                String shopEmail = rs.getString("shopEmail");
                String shopPass = rs.getString("shopPass");
                String address = rs.getString("address");
                shop = new Shop(shopID,shopName,shopEmail,shopPass,address);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return shop;
    }
}
