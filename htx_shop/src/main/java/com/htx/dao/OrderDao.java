package com.htx.dao;

import com.htx.model.Book;
import com.htx.model.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Description TODO
 * @ClassName: OrderDao
 * @Author: htx
 * @Date: Created in 23:04 2020/6/19
 * @Version 1.0
 */
public interface OrderDao {
    public List<Order> findAll();
    public Order findById(int orderId);
    public void delete(int orderId);
    public void update(Order order);
    public void save(Order order);

    public List<Order> findByBookName(String BookName);

    public List<Order> findByPage(String userName, int ofset, int limit);

    public List<Order> findByPageAndState(String userName, int ofset, int limit, String state);

    public List<Order> findByUserName(String userName);

    public List<Order> findByBookId(@Param("books") List<Book> books, @Param("userName")String userName);

}
