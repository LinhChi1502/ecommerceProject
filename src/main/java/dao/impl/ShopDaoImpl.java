package dao.impl;

import dao.ShopDao;
import jdbc.JDBCConnection;
import model.Shop;
import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
//private int shopID;
//private String shopName;
//private String address;
//private String shopEmail;
//private String shopPass;
public class ShopDaoImpl implements ShopDao {
    Connection connection = JDBCConnection.getConnection();
    private static final String SELECT_ALL_SHOPS = "select * from shop";
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
                String address = rs.getString("address");
                String shopEmail = rs.getString("shopEmail");
                String shopPass = rs.getString("shopPass");
                Shop shop = new Shop(shopID, shopName, address, shopEmail, shopPass);
                shops.add(shop);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return shops;
    }
}
