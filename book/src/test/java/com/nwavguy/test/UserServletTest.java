package com.nwavguy.test;

import com.nwavguy.web.UserServlet;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class UserServletTest {
    public void login(){
        System.out.println("login() method is called");
    }
    public void regist(){
        System.out.println("regist() method is called");
    }
    public void updateUser(){
        System.out.println("updateUser() method is called");
    }
    public void updateUserPassword(){
        System.out.println("updateUserPassword() method is called");
    }

    public static void main(String[] args) {
        String action = "login";

        try {
            // get the method
            Method method =  UserServletTest.class.getDeclaredMethod(action);
            System.out.println(method);
            //invoke the method
            method.invoke(new UserServletTest());

        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
