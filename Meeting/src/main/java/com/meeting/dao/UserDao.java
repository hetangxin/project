package com.meeting.dao;

import com.meeting.model.User;

import java.util.List;

//用户的持久层接口
public interface UserDao {

    //查找所有用户
    public List<User> findAll();

    //根据部门id查找用户
    public List<User> findByDeptId(int deptId);

    //根据部门名查找经理
    public User findByDeptIdAndLeader(int deptId);

    //增加用户
    public void save(User user);

    //删除用户
    public void delete(int userId);

    //更新用户
    public void update(User user);

    //根据用户id查找用户
    public User findById(int userId);
}
