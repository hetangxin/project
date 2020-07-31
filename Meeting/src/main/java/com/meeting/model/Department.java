package com.meeting.model;

import java.util.Objects;

public class Department {

    private int dept_id;
    private String dept_name;
    private String dept_leader;

    public Department() {
    }

    public Department(int dept_id, String dept_name, String dept_leader) {
        this.dept_id = dept_id;
        this.dept_name = dept_name;
        this.dept_leader = dept_leader;
    }

    public int getDept_id() {
        return dept_id;
    }

    public void setDept_id(int dept_id) {
        this.dept_id = dept_id;
    }

    public String getDept_name() {
        return dept_name;
    }

    public void setDept_name(String dept_name) {
        this.dept_name = dept_name;
    }

    public String getDept_leader() {
        return dept_leader;
    }

    public void setDept_leader(String dept_leader) {
        this.dept_leader = dept_leader;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Department that = (Department) o;
        return dept_id == that.dept_id &&
                Objects.equals(dept_name, that.dept_name) &&
                Objects.equals(dept_leader, that.dept_leader);
    }

    @Override
    public int hashCode() {
        return Objects.hash(dept_id, dept_name, dept_leader);
    }

    @Override
    public String toString() {
        return "Department{" +
                "dept_id=" + dept_id +
                ", dept_name='" + dept_name + '\'' +
                ", dept_leader='" + dept_leader + '\'' +
                '}';
    }
}
