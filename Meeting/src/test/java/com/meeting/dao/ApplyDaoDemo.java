package com.meeting.dao;


import com.meeting.model.Apply;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@ContextConfiguration(locations = "classpath:applicationContext.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class ApplyDaoDemo {

    @Autowired
    private ApplyDao applyDao;

    @Test
    public void save() {
        Apply apply = new Apply();
        apply.setMeetingroom_id(1);
        apply.setStart_time("2020-7-4 08:00:00");
        apply.setEnd_time("2020-7-4 9:00:00");
        apply.setUserId(171001);
        apply.setState("2");
        applyDao.save(apply);
    }

//    @Test
//    public void findAll() {
//        System.out.println(applyDao.findAll());
//    }

//    @Test
//    public void findByState() {
//        System.out.println(applyDao.findByState());
//    }

    @Test
    public void findByTime() {
        System.out.println(applyDao.findByTime("2020-07-04 09:00:00", "2020-07-04 08:00:00"));
    }

    @Test
    public void update() {

        Apply apply = applyDao.findById(1);

        apply.setStart_time("2020-7-4 08:00:00");
        apply.setEnd_time("2020-7-4 10:00:00");

        applyDao.update(apply);
    }

}
