package controller;

import dao.ShopDao;
import dao.UserDao;
import dao.impl.ShopDaoImpl;
import dao.impl.UserDaoImpl;
import model.Shop;
import model.User;

import javax.jws.soap.SOAPBinding;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "LoginController", urlPatterns = "/logincontroller")
public class LoginController extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = new UserDaoImpl();
        ShopDao shopDao = new ShopDaoImpl();
        List<User> users = userDao.listUser();
        List<Shop> shops = shopDao.listShop();
        String email = request.getParameter("useremail");
        String pass = request.getParameter("pass");

        for (User user : users
        ) {
            if (user.getUserEmail().equals(email) && user.getUserPass().equals(pass)) {
                if (user.getUserRole().equals("admin")) {
                    request.setAttribute("admin", user);
                    List<User> buyerLimitList = userDao.listBuyerLimit10();
                    request.setAttribute("buyerLimitList", buyerLimitList);
                    List<Shop> shopLimitList = shopDao.listShopLimit10();
                    request.setAttribute("shopLimitList", shopLimitList);
                    RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/admin/adminPage.jsp");
                    requestDispatcher.forward(request, response);
                }
                if (user.getUserRole().equals("buyer")) {
                    request.setAttribute("buyer", user);
                    RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/buyer/buyerPage.jsp");
                    requestDispatcher.forward(request, response);
                }
            }
        }
        for (Shop shop: shops) {
            if (shop.getShopEmail().equals(email) && shop.getShopPass().equals(pass)) {
                request.setAttribute("shopOwner", shop);
                request.setAttribute("shopOwner", shop);

                RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/shopOwner/shopOwnerPage.jsp");
                requestDispatcher.forward(request, response);
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("view/login.jsp");
    }
}
