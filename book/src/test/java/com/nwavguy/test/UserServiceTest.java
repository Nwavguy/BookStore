package com.nwavguy.test;

import com.nwavguy.pojo.User;
import com.nwavguy.service.UserService;
import com.nwavguy.service.impl.UserServiceImpl;
import org.junit.Test;

import static org.junit.Assert.*;

public class UserServiceTest {

    UserService userService = new UserServiceImpl();

    @Test
    public void registUser() {
        userService.registUser(new User(null, "tom", "123456", "tom@hotmail.com"));
        userService.registUser(new User(null, "tom123", "123456", "tom123@hotmail.com"));
    }

    @Test
    public void login() {
        System.out.println(userService.login(new User(null, "tom", "123456", null)));
    }

    @Test
    public void existUsername() {
        if (userService.existUsername("tom1")) {
            System.out.println("Username already exists.");
        } else {
            System.out.println("Username is available for use.");
        }
    }
}