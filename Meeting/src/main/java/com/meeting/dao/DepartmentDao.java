package com.meeting.dao;

import com.meeting.model.Department;

import java.util.List;

public interface DepartmentDao {

    //查询所有部门
    public List<Department> findAll();

    //根据id查询部门
    public Department findById(int id);

    //根据部门名查询部门
    public Department findByName(String dept_name);

}
