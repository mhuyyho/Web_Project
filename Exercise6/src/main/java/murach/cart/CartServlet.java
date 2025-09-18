/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package murach.cart;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import murach.business.Cart;
import murach.business.Product;
import murach.data.ProductDB;

/**
 *
 * @author mhuyy
 */
@WebServlet(name = "CartServlet", urlPatterns = {"/cart", "/checkout"})
public class CartServlet extends HttpServlet {

    private Cart getCart(HttpSession session) {
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }
        return cart;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        // /cart -> hien thi gio hang
        req.getRequestDispatcher("cart.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String action = req.getParameter("action");
        HttpSession session = req.getSession();
        Cart cart = getCart(session);
        String servletPath = req.getServletPath();

        if ("add".equals(action)) {
            String code = req.getParameter("code");
            int qty = parseInt(req.getParameter("qty"), 1);
            Product p = ProductDB.find(code);
            if (p != null) cart.add(p, qty);
            resp.sendRedirect(req.getContextPath() + "/cart"); // sang trang gio hang
            return;
        }

        if ("update".equals(action)) {
            String code = req.getParameter("code");
            int qty = parseInt(req.getParameter("qty"), 1);
            cart.update(code, qty);
            resp.sendRedirect(req.getContextPath() + "/cart");
            return;
        }

        if ("remove".equals(action)) {
            String code = req.getParameter("code");
            cart.remove(code);
            resp.sendRedirect(req.getContextPath() + "/cart");
            return;
        }

        if ("continue".equals(action)) {
            resp.sendRedirect(req.getContextPath() + "/");
            return;
        }
        
        if ("/checkout".equals(servletPath) || "checkout".equals(action)) {
            req.getRequestDispatcher("checkout.jsp").forward(req, resp);
            return;
        }

        // mac dinh: hien gio hang
        req.getRequestDispatcher("cart.jsp").forward(req, resp);
    }

    private int parseInt(String s, int def) {
        try { return Integer.parseInt(s); } catch (Exception e) { return def; }
    }
}
