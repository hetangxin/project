package dao;

import com.htx.dao.UserDao;
import com.htx.model.Order;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;
import java.util.Random;

/**
 * @Description TODO
 * @ClassName: UserDaoDemo
 * @Author: htx
 * @Date: Created in 23:42 2020/6/19
 * @Version 1.0
 */
@ContextConfiguration(locations = "classpath:applicationContext.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class UserDaoDemo {

    @Autowired
    private UserDao userDao;

    @Test
    public void save() {


    }


    @Test
    public void findAll() {
        System.out.println(userDao.findAll());
    }

    @Test
    public void findByName() {
        System.out.println(userDao.findByName("htx"));
    }

    @Test
    public void delete() {

    }

    @Test
    public void update() {

    }

}
