package com.nwavguy.service;

import com.nwavguy.pojo.User;

public interface UserService {
    /**
     * Regist new user
     * @param user
     */
    public void registUser(User user);

    /**
     * user login
     * @param user
     * @return user if user login was successful, null otherwise.
     */
    public User login(User user);

    /**
     * Check if the username is already exisits
     * @param username
     * @return true if username already exists, false otherwise.
     */
    public boolean existUsername(String username);
}
