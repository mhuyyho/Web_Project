package com.shop.servlet;

import com.shop.model.Product;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ProductServlet extends HttpServlet {
    private List<Product> products = new ArrayList<>();

    @Override
    public void init() {
        products.add(new Product("P01", "Laptop Dell", 1500));
        products.add(new Product("P02", "iPhone Mobile", 999));
        products.add(new Product("P03", "Sony HeadPhone", 199));
        products.add(new Product("P04", "Accessory ASUS", 99));
        products.add(new Product("P05", "Accessory DELL", 100));
        products.add(new Product("P06", "Router WIFI", 250));
        products.add(new Product("P07", "Camera IP", 299));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("products", products);
        RequestDispatcher dispatcher = req.getRequestDispatcher("products.jsp");
        dispatcher.forward(req, resp);
    }
}

