package com.meeting.service;

import com.meeting.model.User;

import java.util.List;

//用户的业务层接口
public interface IUserService {

    //登陆
    public boolean login(int userId, String password);

    //查找所有用户
    public List<User> findUserAll();

    //根据部门id查找用户
    public List<User> findUserByDeptId(int deptId);

    //根据部门名查找经理
    public User findUserByDeptIdAndLeader(int deptId);

    //根据用户id查找用户
    public User findByUserId(int userId);

    //根据用户id删除用户
    public void deleteUser(int userId);

    //更新用户
    public void updateUser(User user);

    //添加用户
    public void addUser(User user);

}
