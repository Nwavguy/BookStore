package com.nwavguy.web;

import com.nwavguy.pojo.User;
import com.nwavguy.service.UserService;
import com.nwavguy.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginServlet extends HttpServlet {
    private UserService userService = new UserServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // get parameters from request
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        // call user service login method
        User user = userService.login(new User(null, username, password, null));
        if (user == null) {
            System.out.println("login failed");
            req.getRequestDispatcher("/pages/user/login.jsp").forward(req, resp);
        } else {
            System.out.println("login success");
            req.getRequestDispatcher("/pages/user/login_success.jsp").forward(req, resp);
        }
    }
}
