package dao;

import model.User;

import java.util.List;

public interface IUserDao {
     List<User> listUser();

     List<User> listBuyer();

     List<User> listBuyerLimit10();

     User findBuyerById(int buyerID);
}