package com.meeting.controller;

import com.meeting.model.Apply;
import com.meeting.model.MeetingRoom;
import com.meeting.model.Notice;
import com.meeting.model.User;
import com.meeting.service.IApplyService;
import com.meeting.service.IMeetingRoomService;
import com.meeting.service.INoticeService;
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
@RequestMapping(path = "/notice")
public class NoticeController {

    @Autowired
    private INoticeService noticeService;

    @Autowired
    private IMeetingRoomService meetingRoomService;

    @Autowired
    private IApplyService applyService;

    @RequestMapping(path = "/findNoticeByUserId")
    @ResponseBody
    public Map<String, Object> findNoticeByUserId(HttpServletRequest request) {
        HttpSession session = request.getSession();

        Map<String, Object> map = new HashMap<>();

        User user = (User) session.getAttribute("user");

        List<Notice> notices = noticeService.findNoticeByUserId(user.getUserId());

        List<MeetingRoom> meetingRooms = new ArrayList<>();

        List<Apply> applies = new ArrayList<>();

        for (Notice notice : notices) {

            Apply apply = applyService.findApplyById(notice.getMeeting_id());

            applies.add(apply);
            meetingRooms.add(meetingRoomService.findMeetingRoomById(apply.getMeetingroom_id()));

        }

        //System.out.println(meetingRooms);

        map.put("notice", notices);
        map.put("meetingRoom", meetingRooms);
        map.put("apply", applies);
        return map;
    }

    @RequestMapping(path = "/findNoticeByUserIdAndState")
    @ResponseBody
    public JsonMsg findNoticeByUserIdAndState(HttpServletRequest request) {
        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");

        List<Notice> notices = noticeService.findNoticeByUserIdAndState(user.getUserId());

        //System.out.println(notices.size());

        return JsonMsg.success().addInfo("noticeSize", notices.size());
    }


    @RequestMapping(path = "/changeState")
    @ResponseBody
    public Map<String, Object> changeState(int noticeId) {

        Map<String, Object> map = new HashMap<>();

        Notice notice = noticeService.findNoticeById(noticeId);

        notice.setState("1");
        noticeService.updateNotice(notice);

        Apply apply = applyService.findApplyById(notice.getMeeting_id());

        MeetingRoom meetingRoom = meetingRoomService.findMeetingRoomById(apply.getMeetingroom_id());

        map.put("notice", notice);
        map.put("apply", apply);
        map.put("meetingRoom", meetingRoom);

        return map;
    }

    @RequestMapping(path = "/deleteNotice")
    @ResponseBody
    public JsonMsg deleteNotice(int noticeId) {

        noticeService.deleteNotice(noticeId);
        return JsonMsg.success();

    }

}
