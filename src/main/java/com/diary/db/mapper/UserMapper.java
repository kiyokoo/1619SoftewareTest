package com.diary.db.mapper;

import com.diary.db.model.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

/**
 * 查询用户表操作
 */
@Mapper
@Repository
public interface UserMapper {

    //通过用户名查询用户信息
    User findByUsername(String username);
    //通过用户名和密码查询用户信息
    User findByUsernameAndPassword(String username, String password);
    //添加用户
    void addUser(String username, String password);
    //修改密码
    void updatePassword(User user);
}
