package com.htx.service;

import com.htx.model.Book;
import com.htx.model.Order;
import org.aspectj.weaver.ast.Or;

import java.util.List;

/**
 * @Description TODO
 * @ClassName: IOrderService
 * @Author: htx
 * @Date: Created in 0:48 2020/6/20
 * @Version 1.0
 */
public interface IOrderService {

    public List<Order> findOrderAll();

    public Order findOrderById(int orderId);

    public List<Order> findOrderByUserName(String userName);

    public boolean deleteOrder(int orderId);

    public boolean saveOrder(Order order);

    public boolean updateOrder(Order order);

    public List<Order> findOrderByPage(String username, int ofset, int limit);

    public List<Order> findOrderByPageAndState(String username, int ofset, int limit, String state);

    public List<Order> findOrderByBookId(List<Book> books, String userName);

}
