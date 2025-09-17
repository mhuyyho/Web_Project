package com.example.download;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.*;
import java.util.*;

@WebServlet("/download")
public class DownloadServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        String url = "/index.jsp";

        if (action == null) {
            action = "viewAlbums";
        }

        if (action.equals("viewAlbums")) {
            // Danh sách album (giả lập như trong sách)
            Map<String, String> albums = new LinkedHashMap<>();
            albums.put("8601", "86 (the band) - True Life Songs and Pictures");
            albums.put("pf01", "Paddlefoot - The First CD");
            albums.put("pf02", "Paddlefoot - The Second CD");
            albums.put("jr01", "Joe Rut - Genuine Wood Grained Finish");

            request.setAttribute("albums", albums);
            url = "/albums.jsp";
        }
        else if ("fakeDownload".equals(action)) {
            String song = request.getParameter("song");
            request.setAttribute("message", "Pretend downloading: " + song);
            url = "/message.jsp";
        }
        else if (action.equals("checkUser")) {
            String productCode = request.getParameter("productCode");
            request.setAttribute("productCode", productCode);
            url = "/register.jsp";
        }
        else if (action.equals("viewCookies")) {
            url = "/view_cookies.jsp";
        }
        else if (action.equals("deleteCookies")) {
            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie c : cookies) {
                    c.setMaxAge(0);
                    c.setPath("/");
                    response.addCookie(c);
                }
            }
            url = "/delete_cookies.jsp";
        }

        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
