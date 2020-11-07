package controller;

import dao.IProductDao;
import dao.IShopDao;
import dao.IUserDao;
import dao.impl.IProductDaoImpl;
import dao.impl.IShopDaoImpl;
import dao.impl.IUserDaoImpl;
import model.Product;
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

@WebServlet(name = "LoginController", urlPatterns = "/logincontroller")
public class LoginController extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        IUserDao IUserDao = new IUserDaoImpl();
        IShopDao IShopDao = new IShopDaoImpl();
        IProductDao productDao = new IProductDaoImpl();
        List<User> users = IUserDao.listUser();
        List<Shop> shops = IShopDao.listShop();
        String email = request.getParameter("useremail");
        String pass = request.getParameter("pass");

        for (User user : users
        ) {
            if (user.getUserEmail().equals(email) && user.getUserPass().equals(pass)) {
                if (user.getUserRole().equals("admin")) {
                    request.setAttribute("admin", user);
                    List<User> buyerLimitList = IUserDao.listBuyerLimit10();
                    request.setAttribute("buyerLimitList", buyerLimitList);
                    List<Shop> shopLimitList = IShopDao.listShopLimit10();
                    request.setAttribute("shopLimitList", shopLimitList);
                    RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/admin/adminPage.jsp");
                    requestDispatcher.forward(request, response);
                }
                if (user.getUserRole().equals("buyer")) {
                    request.setAttribute("buyer", user);
                    List<Product> products = productDao.listAllProduct();
                    request.setAttribute("products", products);
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
