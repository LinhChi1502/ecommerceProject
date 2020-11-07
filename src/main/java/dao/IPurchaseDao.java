package dao;

import model.Purchase;
import model.User;

import java.util.List;

public interface IPurchaseDao {
    void addPurchase(Purchase purchase);

    List<Purchase> listAllPurchaseOfBuyer(int buyerID);
}