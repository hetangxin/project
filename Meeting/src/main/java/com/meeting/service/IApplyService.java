package com.meeting.service;

import com.meeting.model.Apply;

import java.util.List;

public interface IApplyService {

    //查找所有申请中和同意的会议记录
    public List<Apply> findApplyAllAndState();

    //根据会议id查找会议记录
    public Apply findApplyById(int id);

    //根据用户id查找会议记录
    public List<Apply> findApplyByUserId(int id);

    //根据会议室id查找会议记录
    public List<Apply> findApplyByMeetingRoomId(int meetingRoomId);

    //查询申请中的会议记录
    public List<Apply> findApplyByState();

    //根据用户id查询已申请的会议记录
    public List<Apply> findApplyByUserIdAndState(int id);

    //根据时间段查询会议记录
    public List<Apply> findApplyByTime(String startTime, String endTime);

    //根据会议室id删除会议记录
    public void deleteApplyByMeetingRoomId(int meetingRoomId);

    //根据申请人id删除会议记录
    public void deleteApplyByUserId(int userId);

    //删除会议记录
    public void deleteApply(int id);

    //添加会议记录
    public void addApply(Apply apply);

    //更新会议记录
    public void updateApply(Apply apply);

}
