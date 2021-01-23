package com.nwavguy.dao;

import com.nwavguy.dao.impl.UserDaoImpl;
import com.nwavguy.pojo.User;
import org.junit.Test;

import static org.junit.Assert.*;

public class UserDaoTest {

    UserDao userDao = new UserDaoImpl();

    @Test
    public void queryUserByUsername() {
        if (userDao.queryUserByUsername("admin") == null) {
            System.out.println("Username is available!");
        } else {
            System.out.println("Username already exists");
        }
    }

    @Test
    public void testQueryUserByUsername() {
        if (userDao.queryUserByUsernameAndPassword("admin", "admin1234") == null) {
            System.out.println("Username doesn't exists or wrong password, failed to login");
        } else {
            System.out.println("Login Success");
        }
    }

    @Test
    public void saveUser() {
        System.out.println( userDao.saveUser(new User(null, "peter", "123456", "peter@hotmail.com")));
    }
}