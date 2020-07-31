package com.meeting.service.impl;

import com.meeting.dao.MeetingRoomDao;
import com.meeting.model.MeetingRoom;
import com.meeting.service.IMeetingRoomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

//会议室的业务层
@Service
public class MeetingRoomService implements IMeetingRoomService {

    @Autowired
    private MeetingRoomDao meetingRoomDao;

    @Override
    public List<MeetingRoom> findMeetingRoomAll() {
        return meetingRoomDao.findAll();
    }

    @Override
    public MeetingRoom findMeetingRoomById(int meetingRoomId) {
        return meetingRoomDao.findById(meetingRoomId);
    }

    @Override
    public List<MeetingRoom> findMeetingRoomNotInId(List<Integer> ids) {
        return meetingRoomDao.findNotInId(ids);
    }

    @Override
    public MeetingRoom findMeetingRoomByName(String meetingRoomName) {
        return meetingRoomDao.findByName(meetingRoomName);
    }

    @Override
    public void delete(int meetingRoomId) {
        meetingRoomDao.delete(meetingRoomId);
    }

    @Override
    public void update(MeetingRoom meetingRoom) {
        meetingRoomDao.update(meetingRoom);
    }

    @Override
    public void save(MeetingRoom meetingRoom) {
        meetingRoomDao.save(meetingRoom);
    }
}
