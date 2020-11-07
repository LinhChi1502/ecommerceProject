package controller;

import dao.IProductDao;
import dao.impl.IProductDaoImpl;
import model.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SearchProductsByPrice", urlPatterns = "/search-products-by-price")
public class SearchProductsByPrice extends HttpServlet {

    IProductDao productDao = new IProductDaoImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String priceSet = request.getParameter("range");
        String[] splitPriceSet = priceSet.split(",");
        Double firstPrice = Double.parseDouble(splitPriceSet[0]);
        Double secondPrice = Double.parseDouble(splitPriceSet[1]);
        List<Product> products = productDao.findProductsByPrice(firstPrice,secondPrice);
        request.setAttribute("products", products);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/buyer/searchProductsByPrice.jsp");
        requestDispatcher.forward(request, response);

    }
}
