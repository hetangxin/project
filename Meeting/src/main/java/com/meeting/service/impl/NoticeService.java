package com.meeting.service.impl;

import com.meeting.dao.NoticeDao;
import com.meeting.model.Notice;
import com.meeting.service.INoticeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeService implements INoticeService {

    @Autowired
    private NoticeDao noticeDao;

    @Override
    public Notice findNoticeById(int noticeId) {
        return noticeDao.findById(noticeId);
    }

    @Override
    public List<Notice> findNoticeByUserId(int userId) {
        return noticeDao.findByUserId(userId);
    }

    @Override
    public List<Notice> findNoticeByMeetingId(int meetingId) {
        return noticeDao.findByMeetingId(meetingId);
    }

    @Override
    public List<Notice> findNoticeByUserIdAndState(int userId) {
        return noticeDao.findByUserIdAndState(userId);
    }

    @Override
    public List<Notice> deleteNoticeByUserId(int userId) {
        return noticeDao.deleteByUserId(userId);
    }

    @Override
    public void addNotice(Notice notice) {
        noticeDao.save(notice);
    }

    @Override
    public void deleteNotice(int noticeId) {
        noticeDao.delete(noticeId);
    }

    @Override
    public void updateNotice(Notice notice) {
        noticeDao.update(notice);
    }
}
