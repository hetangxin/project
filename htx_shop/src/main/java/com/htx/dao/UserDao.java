package com.htx.dao;

import com.htx.model.User;

import java.util.List;

/**
 * @Description TODO
 * @ClassName: UserDao
 * @Author: htx
 * @Date: Created in 23:04 2020/6/19
 * @Version 1.0
 */
public interface UserDao {

    public List<User> findAll();
    public User findByName(String userName);
    public void delete(String userName);
    public void update(User user);
    public void save(User user);

}
