package com.htx.service.impl;

import com.htx.dao.OrderDao;
import com.htx.model.Book;
import com.htx.model.Order;
import com.htx.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description TODO
 * @ClassName: OrderService
 * @Author: htx
 * @Date: Created in 0:56 2020/6/20
 * @Version 1.0
 */
@Service
public class OrderService implements IOrderService {

    @Autowired
    private OrderDao orderDao;

    @Override
    public List<Order> findOrderAll() {
        return orderDao.findAll();
    }

    @Override
    public Order findOrderById(int orderId) {
        return orderDao.findById(orderId);
    }

    @Override
    public List<Order> findOrderByUserName(String userName) {
        return orderDao.findByUserName(userName);
    }

    @Override
    public boolean deleteOrder(int orderId) {
        Order temp = orderDao.findById(orderId);
        if(temp == null) {
            return false;
        }
        orderDao.delete(orderId);
        return true;
    }

    @Override
    public boolean saveOrder(Order order) {
        Order temp = orderDao.findById(order.getOrderId());
        if(temp == null) {
            orderDao.save(order);
            return true;
        }
        return false;
    }

    @Override
    public boolean updateOrder(Order order) {
        Order temp = orderDao.findById(order.getOrderId());
        if(temp == null) {
            orderDao.update(order);
            return true;
        }
        return false;
    }

    @Override
    public List<Order> findOrderByPage(String username, int ofset, int limit) {
        return orderDao.findByPage(username, ofset, limit);
    }

    @Override
    public List<Order> findOrderByPageAndState(String username, int ofset, int limit, String state) {
        return orderDao.findByPageAndState(username, ofset, limit, state);
    }

    @Override
    public List<Order> findOrderByBookId(List<Book> books, String userName) {
        return orderDao.findByBookId(books, userName);
    }
}
