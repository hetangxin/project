package dao;

import com.htx.dao.BookDao;
import com.htx.model.Book;
import com.htx.service.impl.BookService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringJUnitConfig;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @Description TODO
 * @ClassName: BookDaoDemo
 * @Author: htx
 * @Date: Created in 23:12 2020/6/19
 * @Version 1.0
 */

@ContextConfiguration(locations = "classpath:applicationContext.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class BookDaoDemo {


    @Autowired
    private BookDao bookDao;

    @Test
    public void save() {

        Book book = new Book("1",1f,1, "1", "1");
        bookDao.save(book);
    }


    @Test
    public void findAll() {
        System.out.println(bookDao.findAll());
    }

    @Test
    public void findById() {
        System.out.println(bookDao.findById(1));
    }

    @Test
    public void delete() {
        bookDao.delete(1);
    }

    @Test
    public void update() {
        Book book = bookDao.findById(1);
        book.setStock(30);
        bookDao.update(book);
        System.out.println(bookDao.findById(1));
    }

    @Test
    public void findByName() {

        System.out.println(bookDao.findByName("JAVA"));
    }

}
