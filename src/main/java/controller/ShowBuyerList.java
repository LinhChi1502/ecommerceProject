package controller;

import dao.ShopDao;
import dao.UserDao;
import dao.impl.ShopDaoImpl;
import dao.impl.UserDaoImpl;
import model.Shop;
import model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ShowBuyerList", urlPatterns = "/show-buyer-list")
public class ShowBuyerList extends HttpServlet {
    UserDao userDao = new UserDaoImpl();
    ShopDao shopDao = new ShopDaoImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> buyers = userDao.listBuyer();
        request.setAttribute("buyers", buyers);
        List<User> buyerLimitList = userDao.listBuyerLimit10();
        request.setAttribute("buyerLimitList", buyerLimitList);
        List<Shop> shopLimitList = shopDao.listShopLimit10();
        request.setAttribute("shopLimitList", shopLimitList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/admin/showBuyerList.jsp");
        requestDispatcher.forward(request, response);
    }
}
