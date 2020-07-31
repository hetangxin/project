package com.meeting.service.impl;

import com.meeting.dao.ApplyDao;
import com.meeting.model.Apply;
import com.meeting.service.IApplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ApplyService implements IApplyService {

    @Autowired
    private ApplyDao applyDao;

    @Override
    public List<Apply> findApplyAllAndState() {
        return applyDao.findAllAndState();
    }

    @Override
    public Apply findApplyById(int id) {
        return applyDao.findById(id);
    }

    @Override
    public List<Apply> findApplyByUserId(int id) {
        return applyDao.findByUserId(id);
    }

    @Override
    public List<Apply> findApplyByMeetingRoomId(int meetingRoomId) {
        return applyDao.findByMeetingRoomId(meetingRoomId);
    }

    @Override
    public List<Apply> findApplyByState() {
        return applyDao.findByState();
    }

    @Override
    public List<Apply> findApplyByUserIdAndState(int id) {
        return applyDao.findByUserIdAndState(id);
    }

    @Override
    public List<Apply> findApplyByTime(String startTime, String endTime) {
        return applyDao.findByTime(startTime, endTime);
    }

    @Override
    public void deleteApplyByMeetingRoomId(int meetingRoomId) {
        applyDao.deleteByMeetingRoomId(meetingRoomId);
    }

    @Override
    public void deleteApplyByUserId(int userId) {
        applyDao.deleteByUserId(userId);
    }

    @Override
    public void deleteApply(int id) {
        applyDao.delete(id);
    }

    @Override
    public void addApply(Apply apply) {
        applyDao.save(apply);
    }

    @Override
    public void updateApply(Apply apply) {
        applyDao.update(apply);
    }
}
