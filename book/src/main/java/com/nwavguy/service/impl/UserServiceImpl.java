package com.nwavguy.service.impl;

import com.nwavguy.dao.UserDao;
import com.nwavguy.dao.impl.UserDaoImpl;
import com.nwavguy.pojo.User;
import com.nwavguy.service.UserService;

public class UserServiceImpl implements UserService {

    private UserDao userDao = new UserDaoImpl();

    @Override
    public void registUser(User user) {
        userDao.saveUser(user);
    }

    @Override
    public User login(User user) {
        return userDao.queryUserByUsernameAndPassword(user.getUsername(), user.getPassword());
    }

    @Override
    public boolean existUsername(String username) {
        if (userDao.queryUserByUsername(username) == null) {
            // return false if user doesn't exist
            return false;
        }
        return true;
    }
}
