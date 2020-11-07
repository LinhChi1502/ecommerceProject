package dao.impl;

import dao.IUserDao;
import jdbc.JDBCConnection;
import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class IUserDaoImpl implements IUserDao {
    Connection connection = JDBCConnection.getConnection();
    private static final String SELECT_ALL_USERS = "select * from users";
    private static final String SELECT_ALL_BUYERS = "select * from users where userRole = 'buyer'";
    private static final String SELECT_ALL_BUYERS_LIMIT_10 = "select * from users where userRole = 'buyer' limit 10";
    private static final String FIND_BUYER_BY_ID = "select * from users where userRole = 'buyer' and userID = ?";

    @Override
    public List<User> listUser() {
        List<User> users = null;

        try {
            users = new ArrayList<>();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int userID = rs.getInt("userID");
                String userEmail = rs.getString("userEmail");
                String userPass = rs.getString("userPass");
                String userRole = rs.getString("userRole");
                String phoneNumber = rs.getString("phoneNumber");
                String userName = rs.getString("userName");
                User user = new User(userID, userEmail, userPass, userRole, phoneNumber, userName);
                users.add(user);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return users;
    }

    @Override
    public List<User> listBuyer() {
        List<User> buyers = null;
        try {
            buyers = new ArrayList<>();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_BUYERS);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int userID = rs.getInt("userID");
                String userEmail = rs.getString("userEmail");
                String userPass = rs.getString("userPass");
                String userRole = rs.getString("userRole");
                String phoneNumber = rs.getString("phoneNumber");
                String userName = rs.getString("userName");
                User buyer = new User(userID, userEmail, userPass, userRole, phoneNumber, userName);
                buyers.add(buyer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return buyers;
    }

    @Override
    public List<User> listBuyerLimit10() {
        List<User> buyerLimitList = null;
        try {
            buyerLimitList = new ArrayList<>();
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_BUYERS_LIMIT_10);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                int userID = rs.getInt("userID");
                String userEmail = rs.getString("userEmail");
                String userPass = rs.getString("userPass");
                String userRole = rs.getString("userRole");
                String phoneNumber = rs.getString("phoneNumber");
                String userName = rs.getString("userName");
                User buyer = new User(userID, userEmail, userPass, userRole, phoneNumber, userName);
                buyerLimitList.add(buyer);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return buyerLimitList;
    }

    @Override
    public User findBuyerById(int buyerID) {
        User buyer = null;
        try {
            PreparedStatement ps = connection.prepareStatement(FIND_BUYER_BY_ID);
            ps.setInt(1, buyerID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String userEmail = rs.getString("userEmail");
                String userPass = rs.getString("userPass");
                String userRole = rs.getString("userRole");
                String phoneNumber = rs.getString("phoneNumber");
                String userName = rs.getString("userName");
                buyer = new User(buyerID, userEmail, userPass, userRole, phoneNumber, userName);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return buyer;
    }
}
