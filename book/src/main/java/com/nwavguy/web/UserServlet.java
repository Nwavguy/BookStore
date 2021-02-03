package com.nwavguy.web;

import com.nwavguy.pojo.User;
import com.nwavguy.service.UserService;
import com.nwavguy.service.impl.UserServiceImpl;
import com.nwavguy.utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;

public class UserServlet extends BaseServlet {
    private UserService userService = new UserServiceImpl();

    /**
     * use for user login
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void login(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        // get parameters from request
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        // call user service login method
        User user = userService.login(new User(null, username, password, null));
        if (user == null) {
            req.setAttribute("msg","Wrong Username or Password.");
            req.setAttribute("username", username);
            // jump back to login page
            // store the error message into Request scope
            System.out.println("login failed");
            req.getRequestDispatcher("/pages/user/login.jsp").forward(req, resp);
        } else {
            System.out.println("login success");
            req.getRequestDispatcher("/pages/user/login_success.jsp").forward(req, resp);
        }
    }

    /**
     * use for user regist
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    protected void regist(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
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
                // store the error message in request scope
                req.setAttribute("msg", "username already exists");
                req.setAttribute("username", username);
                req.setAttribute("email", email);
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
            // store the error message in request scope
            req.setAttribute("msg", "verification failed");
            req.setAttribute("username", username);
            req.setAttribute("email", email);
            System.out.println("Wrong verification code [" + code + "].");
            // Go back to the register page
            req.getRequestDispatcher("/pages/user/regist.jsp").forward(req, resp);
        }

    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String action = req.getParameter("action");

        User user = WebUtils.copyParamToBean(req.getParameterMap(),new User());
        try {
            // get the method
            Method method =  this.getClass().getDeclaredMethod(action,HttpServletRequest.class,HttpServletResponse.class);
//            System.out.println(method);
            //invoke the method
            method.invoke(this, req, resp);

        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
