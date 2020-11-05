package model;

import java.util.Date;
import java.util.HashMap;

public class Cart {
    private int cartID;
    private int userID;
    private Date date;

    public Cart() {
    }

    public Cart(int cartID, int userID, Date date) {
        this.cartID = cartID;
        this.userID = userID;
        this.date = date;
    }

    public int getCartID() {
        return cartID;
    }

    public void setCartID(int cartID) {
        this.cartID = cartID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
