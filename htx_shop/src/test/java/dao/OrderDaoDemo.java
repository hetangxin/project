package dao;

import com.htx.dao.BookDao;
import com.htx.dao.OrderDao;
import com.htx.model.Book;
import com.htx.model.Order;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;
import java.util.List;
import java.util.Random;

/**
 * @Description TODO
 * @ClassName: OrderDaoDemo
 * @Author: htx
 * @Date: Created in 23:42 2020/6/19
 * @Version 1.0
 */
@ContextConfiguration(locations = "classpath:applicationContext.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class OrderDaoDemo {

    @Autowired
    private OrderDao orderDao;

    @Autowired
    private BookDao bookDao;

    @Test
    public void save() {
        Random random = new Random(new Date().getTime());
        Order order =  new Order();
        for (int i = 0; i < 20; i ++) {
            order.setUserName("hetangxin");
            order.setState(random.nextInt(3) + 1);
            order.setBookId(random.nextInt(6) + 1);
            order.setBookNumber(1);
            order.setPhone("15107746090");
            order.setAddress("贺州");
            order.setCost(random.nextInt(100));
            order.setBookImg((random.nextInt(6) + 1) + "");
            orderDao.save(order);
        }
    }

    @Test
    public void findByBookId() {

        List<Book> books = bookDao.findByName("JAVA");

        List<Order> orders = orderDao.findByBookId(books, "htx");

        System.out.println(orders);
    }

    @Test
    public void findAll() {
        System.out.println(orderDao.findAll());
    }

    @Test
    public void findById() {
        System.out.println(orderDao.findById(1));
    }

    @Test
    public void delete() {

    }

    @Test
    public void update() {

    }

    @Test
    public void findByPage() {

        List<Order> orders = orderDao.findByPage("htx", 1, 2);

        System.out.println(orders);

    }

}
