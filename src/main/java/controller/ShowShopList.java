package controller;

import dao.ShopDao;
import dao.impl.ShopDaoImpl;
import model.Shop;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShowShopList", urlPatterns = "/show-shop-list")
public class ShowShopList extends HttpServlet {

    ShopDao shopDao  = new ShopDaoImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Shop> shops = shopDao.listShop();
        request.setAttribute("shops", shops);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/admin/showShopList.jsp");
        requestDispatcher.forward(request, response);
    }
}
