package com.meeting.dao;


import com.meeting.model.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@ContextConfiguration(locations = "classpath:applicationContext.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class UserDemo {

//    @Autowired
//    private UserDao userDao;
//
////    @Test
////    public void save() {
////        User user = new User("171002", "Lylosing","1","234@qq.com","策划部","1");
////        userDao.save(user);
////    }
//
//    @Test
//    public void delete() {
//        userDao.delete("171002");
//    }
//
//    @Test
//    public void findById() {
//        System.out.println(userDao.findById("171002"));
//    }
//
//    @Test
//    public void update() {
//        User user = userDao.findById("171002");
//        user.setPassword("123");
//        userDao.update(user);
//    }

}
