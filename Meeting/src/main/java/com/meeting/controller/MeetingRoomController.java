package com.meeting.controller;

import com.meeting.model.Apply;
import com.meeting.model.MeetingRoom;
import com.meeting.model.Notice;
import com.meeting.service.IApplyService;
import com.meeting.service.IMeetingRoomService;
import com.meeting.service.INoticeService;
import com.meeting.service.impl.MeetingRoomService;
import com.meeting.util.JsonMsg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping(path = "/meetingRoom")
public class MeetingRoomController {

    @Autowired
    private IMeetingRoomService meetingRoomService;

    @Autowired
    private IApplyService applyService;

    @Autowired
    private INoticeService noticeService;

    @RequestMapping(path = "/findAll")
    @ResponseBody
    public List<MeetingRoom> findMeetingRoomAll() {
        List<MeetingRoom> meetingRooms = meetingRoomService.findMeetingRoomAll();
        return meetingRoomService.findMeetingRoomAll();
    }

    @RequestMapping(path = "/update")
    @ResponseBody
    public JsonMsg updateMeetingRoom(@ModelAttribute MeetingRoom meetingRoom) {

        System.out.println(meetingRoom);

        List<MeetingRoom> meetingRooms = meetingRoomService.findMeetingRoomAll();

        meetingRoom.setMeetingroom_id(meetingRoomService.findMeetingRoomByName(meetingRoom.getMeetingroom_name()).getMeetingroom_id());

        meetingRoom.setMeetingroom_name("会议室" + meetingRoom.getPosition_floor() * 10 + meetingRoom.getPosition_room());

        for (MeetingRoom room : meetingRooms) {
            if(room.getPosition_floor() == meetingRoom.getPosition_floor() && room.getPosition_room() == meetingRoom.getPosition_room() && room.getMeetingroom_id() != meetingRoom.getMeetingroom_id()) {
                return JsonMsg.fail().addInfo("updateError", "输入的楼层与房间号以存在会议室！！！");
            }
        }


        meetingRoomService.update(meetingRoom);

        return JsonMsg.success();
    }

    @RequestMapping(path = "/delete")
    @ResponseBody
    public JsonMsg deleteMeetingRoom(String meetingRoomName) {
        System.out.println(meetingRoomName);
        int id = meetingRoomService.findMeetingRoomByName(meetingRoomName).getMeetingroom_id();
        List<Apply> applies = applyService.findApplyByMeetingRoomId(id);

        int flag = 1;

        for (Apply apply : applies) {
            if(apply.getState().equals("1") || apply.getState().equals("0")) {
                flag = 0;
                break;
            }
        }


        if(flag == 1) {

            boolean isDelete = true;

            for (Apply apply : applies) {
                if (apply.getState().equals("2")) {
                    List<Notice> notices = noticeService.findNoticeByMeetingId(apply.getMeeting_id());

                    System.out.println(notices);

                    for (Notice notice : notices) {
                        if (notice.getState().equals("0")) {
                            isDelete = false;
                        }
                    }

                }
            }

            if(isDelete == true) {

                for (Apply apply : applies) {
                    if (apply.getState().equals("2")) {

                        List<Notice> notices = noticeService.findNoticeByMeetingId(apply.getMeeting_id());
                        for (Notice notice : notices) {
                            noticeService.deleteNotice(notice.getNotice_id());
                        }

                        applyService.deleteApply(apply.getMeeting_id());
                    }
                }

                meetingRoomService.delete(id);
                return JsonMsg.success();

            } else {
                return JsonMsg.fail().addInfo("deleteError", "删除失败，删除的会议室存在未执行的会议！");
            }
        } else {
            return JsonMsg.fail().addInfo("deleteError", "删除失败，删除的会议室存在未执行的会议！");
        }
    }

    @RequestMapping(path = "/add")
    @ResponseBody
    public JsonMsg addMeetingRoom(@ModelAttribute MeetingRoom meetingRoom) {

        List<MeetingRoom> meetingRooms = meetingRoomService.findMeetingRoomAll();

        for (MeetingRoom room : meetingRooms) {
            if(room.getPosition_floor() == meetingRoom.getPosition_floor() && room.getPosition_room() == meetingRoom.getPosition_room()) {
                return JsonMsg.fail().addInfo("addError", "输入的楼层与房间号以存在会议室！！！");
            }
        }

        meetingRoomService.save(meetingRoom);
        return JsonMsg.success();
    }

}
