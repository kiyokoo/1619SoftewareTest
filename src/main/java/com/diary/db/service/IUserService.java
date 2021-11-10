package com.diary.db.service;

import com.diary.db.model.User;

/**
 * 用户服务层接口
 */
public interface IUserService {
    User findByUsername(String username);
    User findByUsernameAndPassword(String username, String password);
    void addUser(String username, String password);
    void updatePassword(User user);

}
