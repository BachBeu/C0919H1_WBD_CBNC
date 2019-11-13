package servlet;

import models.Customer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class CustomerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customers = new ArrayList<>();

        customers.add(new Customer("Cậu vàng", "2019/01/01", "Hà Nội", "https://a.wattpad.com/cover/109997648-352-k348559.jpg"));
        customers.add(new Customer("Lão Hạc", "2019/01/01", "Hà Nội", "https://i.ytimg.com/vi/uUDfv4ky-QM/maxresdefault.jpg"));
        customers.add(new Customer("Cậu vàng", "2019/01/01", "Hà Nội", "https://a.wattpad.com/cover/109997648-352-k348559.jpg"));

        request.setAttribute("customers", customers);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
        requestDispatcher.forward(request, response);
    }
}
