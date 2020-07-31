package com.meeting.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


//用于各种界面的跳转
@Controller
public class SkipController {

    //跳转到主页
    @RequestMapping(path = "/home")
    public String home(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute("user");
        session.removeAttribute("admin");
        return "homePage";
    }

    //跳转到管理员登陆界面
    @RequestMapping(path = "/adminLogin")
    public String adminLogin() {
        return "adminLoginPage";
    }

    //跳转到登陆选择界面
    @RequestMapping(path = "/loginOption")
    public String loginOption() {
        return "loginOptionPage";
    }

    //跳转到用户登陆界面
    @RequestMapping(path = "/userLogin")
    public String userLogin() {
        return "userLoginPage";
    }

    //跳转到管理员主页
    @RequestMapping(path = "/adminHome")
    public String adminHome() {
        return "adminHomePage";
    }

    //跳转到管理员主页的会议室申请页面
    @RequestMapping(path = "/adminRoomApply")
    public String adminRoomApply() {
        return "adminRoomApply";
    }

    //跳转到管理员主页的会议室管理页面
    @RequestMapping(path = "/adminRoomManager")
    public String adminRoomManager() {
        return "adminRoomManager";
    }

    //跳转到管理员主页的用户管理页面
    @RequestMapping(path = "/adminUserManager")
    public String adminUserManager() {
        return "adminUserManager";
    }

    //跳转到用户主页
    @RequestMapping(path = "/userHome")
    public String userHome() {
        return "userHomePage";
    }

    //跳转到用户主页的会议室预定历史页面
    @RequestMapping(path = "/userBookingHistory")
    public String userBookingHistory() {
        return "userBookingHistory";
    }

    //跳转到用户主页的会议室预定页面
    @RequestMapping(path = "/userBookingMeeting")
    public String userBookingMeeting() {
        return "userBookingMeeting";
    }

    //跳转到用户主页的个人信息管理页面
    @RequestMapping(path = "/userInfo")
    public String userInfo() {
        return "userInfo";
    }

    //跳转到用户主页的通知页面
    @RequestMapping(path = "/userMeetingNotify")
    public String userMeetingNotify() {
        return "userMeetingNotify";
    }

}
