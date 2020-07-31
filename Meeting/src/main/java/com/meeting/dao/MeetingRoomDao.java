package com.meeting.dao;

import com.meeting.model.MeetingRoom;

import java.util.List;

//用户的持久层接口
public interface MeetingRoomDao {

    //查找所有会议室
    public List<MeetingRoom> findAll();

    //查找不包含该id的会议室
    public List<MeetingRoom> findNotInId(List<Integer> ids);

    //根据会议室id查找会议室
    public MeetingRoom findById(int meetingRoomId);

    //根据会议室名字查找会议室
    public MeetingRoom findByName(String meetingRoomName);

    //根据会议室名字删除会议室
    public void delete(int meetingRoomId);

    //更新会议室
    public void update(MeetingRoom meetingRoom);

    //增加会议室
    public void save(MeetingRoom meetingRoom);

}
