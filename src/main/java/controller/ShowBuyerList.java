package controller;

import dao.UserDao;
import dao.impl.UserDaoImpl;
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

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> buyers = userDao.listUser();
        request.setAttribute("buyers", buyers);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/showBuyerList");
        requestDispatcher.forward(request, response);
    }
}
