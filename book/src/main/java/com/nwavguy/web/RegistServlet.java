package com.nwavguy.web;

import com.nwavguy.pojo.User;
import com.nwavguy.service.UserService;
import com.nwavguy.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RegistServlet extends HttpServlet {

    private UserService userService = new UserServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // get parameters from request
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String confirmed_password = req.getParameter("repwd");
        String email = req.getParameter("email");
        String code = req.getParameter("code");

        //check if the verification code is valid
        if ("abcde".equalsIgnoreCase(code)) {
            // check if username already exists
            if (userService.existUsername(username)) {
                // username already exists
                System.out.println("Username[" + username +"] already exists!");
                // Go back to the register page
                req.getRequestDispatcher("/pages/user/regist.jsp").forward(req, resp);
            } else {
                // register the user
                userService.registUser(new User(null,username,password,email));
                // jump to regist_sucess page
                req.getRequestDispatcher("/pages/user/regist_success.jsp").forward(req, resp);
            }
        } else {
            System.out.println("Wrong verification code [" + code + "].");
            // Go back to the register page
            req.getRequestDispatcher("/pages/user/regist.jsp").forward(req, resp);
        }
    }
}
