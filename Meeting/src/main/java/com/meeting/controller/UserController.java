package com.meeting.controller;

import com.meeting.dao.UserDao;
import com.meeting.model.Department;
import com.meeting.model.User;
import com.meeting.service.IApplyService;
import com.meeting.service.IDepartmentService;
import com.meeting.service.INoticeService;
import com.meeting.service.IUserService;
import com.meeting.util.JsonMsg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(path = "/user")
public class UserController {

    @Autowired
    private IUserService userService;

    @Autowired
    private IDepartmentService departmentService;

    @Autowired
    private IApplyService applyService;

    @Autowired
    private INoticeService noticeService;

    @RequestMapping(path = "/login")
    @ResponseBody
    public JsonMsg Login(int userId, String password, HttpServletRequest request) {
        System.out.println(userId + " " + password);

        HttpSession session = request.getSession();

        if(userService.login(userId, password)) {
            User user = userService.findByUserId(userId);
            session.setAttribute("user", user);
            return JsonMsg.success();
        } else {
            return JsonMsg.fail().addInfo("loginError", "输入的账号密码不正确！！！");
        }
    }

    @RequestMapping(path = "/adminLogin")
    @ResponseBody
    public JsonMsg adminLogin(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.setAttribute("admin", "admin");
        return JsonMsg.success();
    }

    @RequestMapping(path = "/resetEmail")
    @ResponseBody
    public JsonMsg resetEmail(String email, HttpServletRequest request) {

        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");

        user.setEmail(email);

        userService.updateUser(user);

        return JsonMsg.success();
    }

    @RequestMapping(path = "/resetPassword")
    @ResponseBody
    public JsonMsg resetPassword(String password, HttpServletRequest request) {

        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");

        user.setPassword(password);

        userService.updateUser(user);

        return JsonMsg.success();

    }

    @RequestMapping(path = "/findAll")
    @ResponseBody
    public Map<String, Object> findAll() {
        Map<String, Object> map = new HashMap<>();

        map.put("data", userService.findUserAll());

        List<Department> departments = departmentService.findDeptAll();

        map.put("dept", departments);

        for (Department department : departments) {
            map.put(((Integer) department.getDept_id()).toString(), department.getDept_name());
        }

        return map;

    }

    @RequestMapping(path = "/update")
    @ResponseBody
    public JsonMsg update(@ModelAttribute User user) {
        System.out.println(user);

        User temp = userService.findByUserId(user.getUserId());

        user.setPassword(temp.getPassword());
        user.setEmail(temp.getEmail());

        userService.updateUser(user);

        return JsonMsg.success();
    }

    @RequestMapping(path = "/delete")
    @ResponseBody
    public JsonMsg delete(int id) {

        applyService.deleteApplyByUserId(id);
        userService.deleteUser(id);
        noticeService.deleteNoticeByUserId(id);
        return JsonMsg.success();

    }

    @RequestMapping(path = "/add")
    @ResponseBody
    public JsonMsg add(@ModelAttribute User user) {

        userService.addUser(user);

        System.out.println(user);

        return JsonMsg.success().addInfo("userid", user.getUserId());
    }

}
