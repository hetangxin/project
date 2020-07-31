package com.htx.model;

import org.aspectj.weaver.ast.Or;

import java.util.List;
import java.util.Objects;

/**
 * @Description TODO
 * @ClassName: User
 * @Author: htx
 * @Date: Created in 23:01 2020/6/19
 * @Version 1.0
 */
public class User {

    private String userName;
    private String password;
    private String phone;
    private String email;
    private String headImg;

    private List<Order> orders;

    private List<Address> addresses;

    public List<Order> getOrders() {
        return orders;
    }

    public void setOrders(List<Order> orders) {
        this.orders = orders;
    }

    public List<Address> getAddresses() {
        return addresses;
    }

    public void setAddresses(List<Address> addresses) {
        this.addresses = addresses;
    }

    public User() {
    }

    public User(String userName, String password, String phone, String email, String headImg) {
        this.userName = userName;
        this.password = password;
        this.phone = phone;
        this.email = email;
        this.headImg = headImg;
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getHeadImg() {
        return headImg;
    }

    public void setHeadImg(String headImg) {
        this.headImg = headImg;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return Objects.equals(userName, user.userName) &&
                Objects.equals(password, user.password) &&
                Objects.equals(phone, user.phone) &&
                Objects.equals(email, user.email) &&
                Objects.equals(headImg, user.headImg);
    }

    @Override
    public int hashCode() {
        return Objects.hash(userName, password, phone, email, headImg);
    }

    @Override
    public String toString() {
        return "User{" +
                "userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", headImg='" + headImg + '\'' +
                '}';
    }
}
