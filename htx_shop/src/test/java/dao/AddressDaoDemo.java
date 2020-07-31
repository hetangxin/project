package dao;

import com.htx.dao.AddressDao;
import com.htx.model.Address;
import com.htx.model.Book;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * @Description TODO
 * @ClassName: AddressDaoDemo
 * @Author: htx
 * @Date: Created in 23:41 2020/6/19
 * @Version 1.0
 */
@ContextConfiguration(locations = "classpath:applicationContext.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class AddressDaoDemo {

    @Autowired
    private AddressDao addressDao;

    @Test
    public void save() {

    }


    @Test
    public void findAll() {
        System.out.println(addressDao.findAll());
    }

    @Test
    public void findById() {
        System.out.println(addressDao.findById(1));
    }

    @Test
    public void delete() {
        addressDao.delete(1);
    }

    @Test
    public void update() {

    }

}
