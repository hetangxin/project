package com.meeting.controller;

import com.meeting.model.*;
import com.meeting.service.*;
import com.meeting.service.impl.ApplyService;
import com.meeting.util.JsonMsg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(path = "/apply")
public class ApplyController {

    @Autowired
    private IApplyService applyService;

    @Autowired
    private IMeetingRoomService meetingRoomService;

    @Autowired
    private IUserService userService;

    @Autowired
    private IDepartmentService departmentService;

    @Autowired
    private INoticeService noticeService;

    @RequestMapping(path = "/findByTime")
    @ResponseBody
    public Map<String, List<MeetingRoom>> findByTime(String startTime, String endTime) {

        System.out.println(startTime + " " + endTime);

        List<Apply> applies = applyService.findApplyByTime(endTime, startTime);
        
        List<Integer> list = new ArrayList<>();

        for (Apply apply : applies) {
            list.add(apply.getMeetingroom_id());
        }
        List<MeetingRoom> meetingRooms;

        System.out.println(list);

        if(list.size() == 0) {
            meetingRooms = meetingRoomService.findMeetingRoomAll();
        } else {
            meetingRooms = meetingRoomService.findMeetingRoomNotInId(list);
        }

        Map<String ,List<MeetingRoom>> map = new HashMap<>();

        map.put("data", meetingRooms);

        return map;
    }

    @RequestMapping(path = "/findByUserIdAndState")
    @ResponseBody
    public Map<String, Object> findByUserId(HttpServletRequest request) {

        int userId = ((User)request.getSession().getAttribute("user")).getUserId();

        Map<String ,Object> map = new HashMap<>();

        List<MeetingRoom> meetingRooms = new ArrayList<>();

        List<Apply> applies = applyService.findApplyByUserIdAndState(userId);

        for (Apply apply : applies) {
            meetingRooms.add(meetingRoomService.findMeetingRoomById(apply.getMeetingroom_id()));
        }

        map.put("apply", applies);

        map.put("meetingRoom", meetingRooms);

        return map;

    }

    @RequestMapping(path = "/cancelApply")
    @ResponseBody
    public JsonMsg cancelApply(int meeting_id) {

        applyService.deleteApply(meeting_id);

        return JsonMsg.success();

    }

    @RequestMapping(path = "/shenqing")
    @ResponseBody
    public Map<String, Object> shenqing(HttpServletRequest request, String meetingRoom_name, String start_time, String end_time) {
        System.out.println(meetingRoom_name + " " + start_time + " " +end_time);

        MeetingRoom meetingRoom = meetingRoomService.findMeetingRoomByName(meetingRoom_name);

        Apply apply = new Apply();
        apply.setMeetingroom_id(meetingRoom.getMeetingroom_id());
        apply.setStart_time(start_time);
        apply.setEnd_time(end_time);
        apply.setState("0");

        User user = (User) request.getSession().getAttribute("user");

        apply.setUserId(user.getUserId());

        applyService.addApply(apply);

        Map<String, Object> map = new HashMap<>();

        map.put("apply", apply);
        map.put("meetingRoom", meetingRoom);

        return map;
    }

    @RequestMapping(path = "/findAll")
    @ResponseBody
    public Map<String, Object> findAll() {

        Map<String, Object> map = new HashMap<>();

        List<Apply> applies = applyService.findApplyAllAndState();

        map = getMap(applies);

        return map;
    }

    @RequestMapping(path = "/operation")
    @ResponseBody
    public Map<String, Object> operation() {

        Map<String, Object> map = new HashMap<>();

        List<Apply> applies = applyService.findApplyByState();

        map = getMap(applies);

        return map;
    }

    public Map<String, Object> getMap(List<Apply> applies) {

        Map<String, Object> map = new HashMap<>();

        List<MeetingRoom> meetingRooms = new ArrayList<>();

        List<Department> departments = new ArrayList<>();

        for (Apply apply : applies) {
            User user = userService.findByUserId(apply.getUserId());
            meetingRooms.add(meetingRoomService.findMeetingRoomById(apply.getMeetingroom_id()));
            departments.add(departmentService.findDeptById(user.getDept_id()));
        }

        map.put("apply", applies);
        map.put("meetingRoom", meetingRooms);
        map.put("dept", departments);

        return map;
    }

    @RequestMapping(path = "/accept")
    @ResponseBody
    public JsonMsg accept(int meeting_id, String dept_name) {

        Apply apply = applyService.findApplyById(meeting_id);

        apply.setState("1");

        applyService.updateApply(apply);

        List<Notice> notices = new ArrayList<>();

        Department department = departmentService.findDeptByName(dept_name);

        List<User> users = userService.findUserByDeptId(department.getDept_id());

        for (User user : users) {
            Notice notice = new Notice();
            notice.setMeeting_id(meeting_id);
            notice.setUser_id(user.getUserId());
            notice.setState("0");
            notice.setNotice("您有新的会议邀请");
            notices.add(notice);
        }

        for (Notice notice : notices) {
            noticeService.addNotice(notice);
        }

        return JsonMsg.success();
    }

    @RequestMapping(path = "/refuse")
    @ResponseBody
    public JsonMsg refuse(int meeting_id, String dept_name) {

        Department department = departmentService.findDeptByName(dept_name);

        User user = userService.findUserByDeptIdAndLeader(department.getDept_id());

        Apply apply = applyService.findApplyById(meeting_id);

        apply.setState("2");

        applyService.updateApply(apply);

        Notice notice = new Notice();
        notice.setMeeting_id(meeting_id);
        notice.setUser_id(user.getUserId());
        notice.setState("0");
        notice.setNotice("您申请的会议室已被拒绝！");

        noticeService.addNotice(notice);

        return JsonMsg.success();
    }

}
