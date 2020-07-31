package com.meeting.dao;

import com.meeting.model.MeetingRoom;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

@ContextConfiguration(locations = "classpath:applicationContext.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class MeetingRoomDaoDemo {

    @Autowired
    private MeetingRoomDao meetingRoomDao;

    @Test
    public void findAll() {
        System.out.println(meetingRoomDao.findAll());
    }

    @Test
    public void findById() {
        System.out.println(meetingRoomDao.findById(1));
    }

    @Test
    public void save() {
        MeetingRoom meetingRoom = new MeetingRoom();
        meetingRoom.setMeetingroom_name("会议室303");
        meetingRoom.setPosition_floor(3);
        meetingRoom.setPosition_room(3);
        meetingRoom.setNumber(50);
        meetingRoom.setEquipment("白板");

        meetingRoomDao.save(meetingRoom);

    }

    @Test
    public void findNotInId() {
        List<Integer> list = new ArrayList<>();
        list.add(1);
        list.add(2);
        System.out.println(meetingRoomDao.findNotInId(list));
    }

    @Test
    public void delete() {

    }

    @Test
    public void update() {
//        MeetingRoom meetingRoom = meetingRoomDao.findById(3);
//        meetingRoom.setEquipment("其他");
//        meetingRoomDao.update(meetingRoom);
        System.out.println(Long.MIN_VALUE);
    }

}
