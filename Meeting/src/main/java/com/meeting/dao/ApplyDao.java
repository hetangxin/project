package com.meeting.dao;

import com.meeting.model.Apply;

import java.util.List;

public interface ApplyDao {

    //查找所有申请中和同意的会议记录
    public List<Apply> findAllAndState();

    //根据用户id查询已申请的会议记录
    public List<Apply> findByUserIdAndState(int id);

    //查询申请中的会议记录
    public List<Apply> findByState();

    //根据用户id查找会议记录
    public List<Apply> findByUserId(int id);

    //根据会议室id查找会议记录
    public List<Apply> findByMeetingRoomId(int meetingRoomId);

    //根据时间段查询会议记录
    public List<Apply> findByTime(String startTime, String endTime);

    //根据id查找会议记录
    public Apply findById(int id);

    //删除会议记录
    public void delete(int id);

    //根据会议室id删除会议记录
    public void deleteByMeetingRoomId(int meetingRoomId);

    //根据申请人id删除会议记录
    public void deleteByUserId(int userId);

    //添加会议记录
    public void save(Apply apply);

    //更新会议记录
    public void update(Apply apply);

}
