package controller;

import dao.IProductDao;
import dao.IPurchaseDao;
import dao.impl.IProductDaoImpl;
import dao.impl.IPurchaseDaoImpl;
import model.Product;
import model.Purchase;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "BuyProduct", urlPatterns = "/buy-product")
public class BuyProduct extends HttpServlet {

    IPurchaseDao purchaseDao = new IPurchaseDaoImpl();
    IProductDao productDao = new IProductDaoImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productID = Integer.parseInt(request.getParameter("productid"));
        Product product = productDao.findProductById(productID);
        int purchaseQuantity = Integer.parseInt(request.getParameter("quantity"));
        int shopID = product.getShopID();
        String productName = product.getProductName();
        String productImage = product.getProductImage();
        Double productPrice = product.getProductPrice();
        String productDescription = product.getProductDescription();
        String shopName = product.getShopName();
        int leftQuantity = product.getProductQuantity() - purchaseQuantity;
        Product updatedProduct = new Product(productID,shopID,productName,productImage,productPrice,productDescription,
                shopName,leftQuantity);
        productDao.updateProductQuantity(updatedProduct);

        int buyerID = Integer.parseInt(request.getParameter("buyerId"));
        DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");
        Date date = null;
        try {
            date = dateFormat.parse(request.getParameter("date"));
        } catch (ParseException e) {
            e.printStackTrace();
        }

        Purchase purchase = new Purchase(productID, shopID, productName, productImage, productPrice, productDescription,
                shopName, buyerID, date, purchaseQuantity);
        purchaseDao.addPurchase(purchase);
    }
}
