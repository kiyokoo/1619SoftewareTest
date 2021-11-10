package com.diary.db.service.impl;

import com.diary.db.mapper.UserMapper;
import com.diary.db.model.User;
import com.diary.db.service.IUserService;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * 用户服务层实现类
 */
@Component
@Transactional
public class UserServiceImpl implements IUserService {

    //实例化用户操作表对象
    @Resource
    private UserMapper userMapper;

    //通过用户名查询用户信息
    @Override
    public User findByUsername(String username) {
        return userMapper.findByUsername(username);
    }

    //通过用户名和密码查询用户信息
    @Override
    public User findByUsernameAndPassword(String username, String password) {
        return userMapper.findByUsernameAndPassword(username,password);
    }

    //添加用户
    @Override
    public void addUser(String username, String password) {
        userMapper.addUser(username,password);
    }

    //修改密码
    @Override
    public void updatePassword(User user) {
        userMapper.updatePassword(user);
    }
}
