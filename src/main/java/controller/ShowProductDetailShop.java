package controller;

import dao.IProductDao;
import dao.IShopDao;
import dao.impl.IProductDaoImpl;
import dao.impl.IShopDaoImpl;
import model.Product;
import model.Shop;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ShowProductDetailShop", urlPatterns = "show-product-details-shop")
public class ShowProductDetailShop extends HttpServlet {
    IProductDao productDao = new IProductDaoImpl();
    IShopDao shopDao = new IShopDaoImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productID = Integer.parseInt(request.getParameter("productid"));
        Product product = productDao.findProductById(productID);
        int shopID = Integer.parseInt(request.getParameter("shopid"));
        Shop shop = shopDao.findShopById(shopID);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/shop/showShopProDetails.jsp");
    }
}
