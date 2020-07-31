package com.htx.model;

import org.omg.PortableInterceptor.INACTIVE;

import java.util.List;
import java.util.Objects;

/**
 * @Description TODO
 * @ClassName: Order
 * @Author: htx
 * @Date: Created in 23:02 2020/6/19
 * @Version 1.0
 */
public class Order {

    private int orderId;
    private String userName;
    private String phone;
    private String address;
    private int state;
    private int bookId;
    private Integer bookNumber;
    private float cost;
    private String bookImg;

    private Book book;

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public Order() {
    }

    public Order(String userName, String phone, String address, int bookId, Integer bookNumber, float cost, String bookImg) {
        this.userName = userName;
        this.phone = phone;
        this.address = address;
        this.bookId = bookId;
        this.bookNumber = bookNumber;
        this.cost = cost;
        this.bookImg = bookImg;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getBookId() {
        return bookId;
    }

    public void setBookId(int bookId) {
        this.bookId = bookId;
    }

    public Integer getBookNumber() {
        return bookNumber;
    }

    public void setBookNumber(Integer bookNumber) {
        this.bookNumber = bookNumber;
    }

    public float getCost() {
        return cost;
    }

    public void setCost(float cost) {
        this.cost = cost;
    }

    public String getBookImg() {
        return bookImg;
    }

    public void setBookImg(String bookImg) {
        this.bookImg = bookImg;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Order order = (Order) o;
        return orderId == order.orderId &&
                state == order.state &&
                bookId == order.bookId &&
                Float.compare(order.cost, cost) == 0 &&
                Objects.equals(userName, order.userName) &&
                Objects.equals(phone, order.phone) &&
                Objects.equals(address, order.address) &&
                Objects.equals(bookNumber, order.bookNumber) &&
                Objects.equals(bookImg, order.bookImg) &&
                Objects.equals(book, order.book);
    }

    @Override
    public int hashCode() {
        return Objects.hash(orderId, userName, phone, address, state, bookId, bookNumber, cost, bookImg, book);
    }

    @Override
    public String toString() {
        return "Order{" +
                "orderId=" + orderId +
                ", userName='" + userName + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", state=" + state +
                ", bookId=" + bookId +
                ", bookNumber='" + bookNumber + '\'' +
                ", cost=" + cost +
                ", bookImg='" + bookImg + '\'' +
                ", book=" + book +
                '}';
    }
}
