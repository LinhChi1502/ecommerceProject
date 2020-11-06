package dao.impl;

import dao.ShopDao;
import jdbc.JDBCConnection;
import model.Shop;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ShopDaoImpl implements ShopDao {
    Connection connection = JDBCConnection.getConnection();
    private static final String SELECT_ALL_SHOPS = "select * from shop";
    private static final String SELECT_ALL_SHOPS_LIMIT_10 = "select * from shop limit 10";
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
}
