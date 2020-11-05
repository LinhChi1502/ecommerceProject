package model;

public class Product {
    private int productID;
    private int categoryID;
    private String productName;
    private String productImage;
    private double productDescription;

    public Product() {
    }

    public Product(int productID, int categoryID, String productName, String productImage, double productDescription) {
        this.productID = productID;
        this.categoryID = categoryID;
        this.productName = productName;
        this.productImage = productImage;
        this.productDescription = productDescription;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public double getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(double productDescription) {
        this.productDescription = productDescription;
    }
}
