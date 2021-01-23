package com.nwavguy.dao;

import com.nwavguy.pojo.User;

public interface UserDao {

    /**
     * Query user information based on user name
     * @param username
     * @return If the user doesn't exist, return null. Otherwise, return user.
     */
    public User queryUserByUsername(String username);

    /**
     * Query user information based on user name and password
     * @param username
     * @param password
     * @return If the user doesn't exist, return null. Otherwise, return user.
     */
    public User queryUserByUsernameAndPassword(String username, String password);

    /**
     * Save user info
     * @param user
     * @return Return number of lines that has been affected. If failed, return -1.
     */
    public int saveUser(User user);


}
