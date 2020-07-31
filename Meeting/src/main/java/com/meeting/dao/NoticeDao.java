package com.meeting.dao;

import com.meeting.model.Notice;

import java.util.List;

public interface NoticeDao {

    //根据通知id查找通知
    public Notice findById(int noticeId);

    //根据用户id查找通知
    public List<Notice> findByUserId(int userId);

    //根据用户id查找未读的通知
    public List<Notice> findByUserIdAndState(int userId);

    //根据会议id查询通知
    public List<Notice> findByMeetingId(int meetingId);

    //根据用户id删除用户
    public List<Notice> deleteByUserId(int userId);

    //添加通知
    public void save(Notice notice);

    //删除通知
    public void delete(int noticeId);

    //更新通知
    public void update(Notice notice);

}
