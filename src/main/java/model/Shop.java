package model;

public class Shop {
    private int shopID;
    private String shopName;
    private String address;
    private String shopEmail;
    private String shopPass;

    public Shop() {
    }

    public Shop(int shopID, String shopName, String address, String shopEmail, String shopPass) {
        this.shopID = shopID;
        this.shopName = shopName;
        this.address = address;
        this.shopEmail = shopEmail;
        this.shopPass = shopPass;
    }

    public Shop(String shopName, String address, String shopEmail, String shopPass) {
        this.shopName = shopName;
        this.address = address;
        this.shopEmail = shopEmail;
        this.shopPass = shopPass;
    }

    public Shop(String shopName, String address) {
        this.shopName = shopName;
        this.address = address;
    }

    public int getShopID() {
        return shopID;
    }

    public void setShopID(int shopID) {
        this.shopID = shopID;
    }

    public String getShopName() {
        return shopName;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getShopEmail() {
        return shopEmail;
    }

    public void setShopEmail(String shopEmail) {
        this.shopEmail = shopEmail;
    }

    public String getShopPass() {
        return shopPass;
    }

    public void setShopPass(String shopPass) {
        this.shopPass = shopPass;
    }
}
