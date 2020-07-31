package com.htx.service;

import com.htx.model.User;

import java.util.List;

/**
 * @Description TODO
 * @ClassName: IUserService
 * @Author: htx
 * @Date: Created in 0:48 2020/6/20
 * @Version 1.0
 */
public interface IUserService {

    public boolean save(User user);

    public List<User> findUserAll();

    public User findByUserName(String userName);

    public boolean deleteUser(String userName);

    public boolean updateUser(User user);

}
