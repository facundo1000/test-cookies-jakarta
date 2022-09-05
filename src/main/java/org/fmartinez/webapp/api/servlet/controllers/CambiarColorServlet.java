package org.fmartinez.webapp.api.servlet.controllers;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/cambiar-color")
public class CambiarColorServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html");

        String color = req.getParameter("color");

        if (!color.isBlank() || color.isEmpty() || color.contains("black")) {
            Cookie cookieColor = new Cookie("color", color);
            resp.addCookie(cookieColor);
        }

        resp.sendRedirect(req.getContextPath() + "/index.jsp");
    }
}
