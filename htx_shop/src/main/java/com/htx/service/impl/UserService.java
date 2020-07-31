package com.htx.service.impl;

import com.htx.dao.UserDao;
import com.htx.model.User;
import com.htx.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description TODO
 * @ClassName: UserService
 * @Author: htx
 * @Date: Created in 0:56 2020/6/20
 * @Version 1.0
 */

@Service
public class UserService implements IUserService {

    @Autowired
    private UserDao userDao;

    @Override
    public boolean save(User user) {
        if(userDao.findByName(user.getUserName()) != null) {
            return false;
        }
        userDao.save(user);
        return true;
    }

    @Override
    public List<User> findUserAll() {
        return userDao.findAll();
    }

    @Override
    public User findByUserName(String userName) {
        return userDao.findByName(userName);
    }

    @Override
    public boolean deleteUser(String userName) {
        User temp = userDao.findByName(userName);
        if(temp == null) {
            return false;
        }
        userDao.delete(userName);
        return true;
    }

    @Override
    public boolean updateUser(User user) {
        User temp = userDao.findByName(user.getUserName());
        if(temp == null) {
            return false;
        }
        userDao.update(temp);
        return true;
    }
}
