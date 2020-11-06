package dao.impl;

import dao.UserDao;
import jdbc.JDBCConnection;
import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDaoImpl implements UserDao {
    Connection connection = JDBCConnection.getConnection();
    private static final String SELECT_ALL_USERS = "select * from users";
    private static final String SELECT_ALL_BUYERS = "select * form users where userRole = 'buyer'";

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
}
