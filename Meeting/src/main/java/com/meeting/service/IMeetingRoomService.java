package com.meeting.service;

import com.meeting.model.MeetingRoom;

import java.util.List;

//会议室的业务层接口
public interface IMeetingRoomService {

    //查找所有会议室
    public List<MeetingRoom> findMeetingRoomAll();

    //根据会议室id查找会议室
    public MeetingRoom findMeetingRoomById(int meetingRoomId);

    //查找不包含该id的会议室
    public List<MeetingRoom> findMeetingRoomNotInId(List<Integer> ids);

    //根据会议室名字查找会议室
    public MeetingRoom findMeetingRoomByName(String meetingRoomName);

    //根据会议室id删除会议室
    public void delete(int meetingRoomId);

    //更新会议室
    public void update(MeetingRoom meetingRoom);

    //插入会议室
    public void save(MeetingRoom meetingRoom);

}
