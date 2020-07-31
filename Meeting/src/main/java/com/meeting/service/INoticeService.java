package com.meeting.service;

import com.meeting.model.Notice;

import java.util.List;

public interface INoticeService {

    //根据通知id查找通知
    public Notice findNoticeById(int noticeId);

    //根据用户id查找通知
    public List<Notice> findNoticeByUserId(int userId);

    //根据会议Id查找通知
    public  List<Notice> findNoticeByMeetingId(int meetingId);

    //根据用户id查找未读的通知
    public List<Notice> findNoticeByUserIdAndState(int userId);

    //根据用户id删除用户
    public List<Notice> deleteNoticeByUserId(int userId);

    //添加通知
    public void addNotice(Notice notice);

    //删除通知
    public void deleteNotice(int noticeId);

    //更新通知
    public void updateNotice(Notice notice);

}
