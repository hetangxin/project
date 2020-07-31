package com.meeting.model;

import java.util.Objects;

public class User {

    private int userId;
    private String userName;
    private String password;
    //1为男 0为女
    private String sex;
    private String email;
    private int dept_id;
    //1为经理 0为普通员工
    private int type;

    public User() {
    }

    public User(int userId, String userName, String sex, int dept_id, int type) {
        this.userId = userId;
        this.userName = userName;
        this.sex = sex;
        this.dept_id = dept_id;
        this.type = type;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getDept_id() {
        return dept_id;
    }

    public void setDept_id(int dept_id) {
        this.dept_id = dept_id;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return dept_id == user.dept_id &&
                Objects.equals(userId, user.userId) &&
                Objects.equals(userName, user.userName) &&
                Objects.equals(password, user.password) &&
                Objects.equals(sex, user.sex) &&
                Objects.equals(email, user.email) &&
                Objects.equals(type, user.type);
    }

    @Override
    public int hashCode() {
        return Objects.hash(userId, userName, password, sex, email, dept_id, type);
    }

    @Override
    public String toString() {
        return "User{" +
                "userId='" + userId + '\'' +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", sex='" + sex + '\'' +
                ", email='" + email + '\'' +
                ", dept_id=" + dept_id +
                ", type='" + type + '\'' +
                '}';
    }
}
