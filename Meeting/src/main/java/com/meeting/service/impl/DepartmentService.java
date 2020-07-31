package com.meeting.service.impl;

import com.meeting.dao.DepartmentDao;
import com.meeting.model.Department;
import com.meeting.service.IDepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DepartmentService implements IDepartmentService {

    @Autowired
    private DepartmentDao departmentDao;

    @Override
    public List<Department> findDeptAll() {
        return departmentDao.findAll();
    }

    @Override
    public Department findDeptById(int id) {
        return departmentDao.findById(id);
    }

    @Override
    public Department findDeptByName(String dept_name) {
        return departmentDao.findByName(dept_name);
    }
}
