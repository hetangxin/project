package com.meeting.service;

import com.meeting.model.Department;

import java.util.List;

public interface IDepartmentService {

    //查询所有部门
    public List<Department> findDeptAll();

    //根据id查询部门
    public Department findDeptById(int id);

    //根据部门名查询部门
    public Department findDeptByName(String dept_name);

}
