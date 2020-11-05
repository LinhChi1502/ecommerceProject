package model;

public class Item {
    private int itemID;
    private int productID;
    private int quantity;
    private double unitPrice;
    private int cartID;

    public Item() {
    }

    public Item(int itemID, int productID, int quantity, double unitPrice, int cartID) {
        this.itemID = itemID;
        this.productID = productID;
        this.quantity = quantity;
        this.unitPrice = unitPrice;
        this.cartID = cartID;
    }

    public int getItemID() {
        return itemID;
    }

    public void setItemID(int itemID) {
        this.itemID = itemID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public int getCartID() {
        return cartID;
    }

    public void setCartID(int cartID) {
        this.cartID = cartID;
    }
}
