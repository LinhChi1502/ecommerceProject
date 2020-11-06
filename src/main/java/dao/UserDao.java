package dao;

import model.User;

import java.util.List;

public interface UserDao {
     List<User> listUser();

     List<User> listBuyer();

     List<User> listBuyerLimit10();
}
