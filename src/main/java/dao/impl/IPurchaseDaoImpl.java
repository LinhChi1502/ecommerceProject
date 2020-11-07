package dao.impl;

import dao.IPurchaseDao;
import jdbc.JDBCConnection;
import model.Purchase;
import model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

public class IPurchaseDaoImpl  implements IPurchaseDao {
    Connection connection = JDBCConnection.getConnection();
    private static final String ADD_PURCHASE =
            "insert into purchase(productId, userId, date, purchaseQuantity) VALUE (?,?,?,?)";

    private static final String SELECT_ALL_PURCHASE_OF_BUYER =
            "select * from purchase left join products p on p.productID = purchase.productId where userId = ?";

    @Override
    public void addPurchase(Purchase purchase) {
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(ADD_PURCHASE);
            preparedStatement.setInt(1, purchase.getProductID());
            preparedStatement.setInt(2, purchase.getUserId());
            preparedStatement.setDate(3, (java.sql.Date) purchase.getDate());
            preparedStatement.setInt(4, purchase.getPurchaseQuantity());
            preparedStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public List<Purchase> listAllPurchaseOfBuyer(int buyerID) {
        List<Purchase> purchases = null;
        try {
            PreparedStatement ps = connection.prepareStatement(SELECT_ALL_PURCHASE_OF_BUYER);
            ps.setInt(1,buyerID);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int purchaseID = rs.getInt("purchaseId");
                int productID = rs.getInt("purchase.productId");
                int shopID = rs.getInt("shopID");
                String productName = rs.getString("productName");
                String productImage = rs.getString("productImage");
                double productPrice = rs.getDouble("productPrice");
                String productDescription = rs.getString("productDescription");
                String shopName = rs.getString("shopName");
                int userID = rs.getInt("userId");
                Date date = rs.getDate("date");
                int purchaseQuantity = rs.getInt("purchaseQuantity");

                Purchase purchase = new Purchase(productID,shopID,productName,productImage,productPrice,
                        productDescription,shopName,userID,date,purchaseQuantity);
                purchases.add(purchase);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return purchases;
    }
}
