package com.meeting.service.impl;

import com.meeting.dao.UserDao;
import com.meeting.model.User;
import com.meeting.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

//用户的业务层
@Service
public class UserService implements IUserService {

    @Autowired
    private UserDao userDao;

    @Override
    public boolean login(int userId, String password) {
        User user = userDao.findById(userId);

        if(user == null || user.getPassword().equals(password) == false) {
            return false;
        }

        return true;
    }

    @Override
    public List<User> findUserAll() {
        return userDao.findAll();
    }

    @Override
    public List<User> findUserByDeptId(int deptId) {
        return userDao.findByDeptId(deptId);
    }

    @Override
    public User findUserByDeptIdAndLeader(int deptId) {
        return userDao.findByDeptIdAndLeader(deptId);
    }

    @Override
    public User findByUserId(int userId) {
        return userDao.findById(userId);
    }

    @Override
    public void deleteUser(int userId) {
        System.out.println(userId);
        userDao.delete(userId);
    }

    @Override
    public void updateUser(User user) {
        userDao.update(user);
    }

    @Override
    public void addUser(User user) {
        userDao.save(user);
    }
}
