package com.htx.controller;

import com.htx.model.Order;
import com.htx.model.Page;
import com.htx.model.User;
import com.htx.service.IOrderService;
import com.htx.service.IUserService;
import com.htx.util.JsonMsg;
import com.htx.util.PageInit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @Description TODO
 * @ClassName: UserController
 * @Author: htx
 * @Date: Created in 1:10 2020/6/20
 * @Version 1.0
 */

@Controller
@RequestMapping(path = "/user")
@SessionAttributes(value = {"user", "orders", "page", "orderState", "address"})
public class UserController {

    @Autowired
    private IUserService userService;

    @Autowired
    private IOrderService orderService;

    @RequestMapping(path = "/loginOut")
    public String logout(HttpServletRequest request) {
        request.getSession().removeAttribute("user");
        request.getSession().removeAttribute("allOrders");
        return "login";
    }


    @RequestMapping(path = "/home")
    public String home() {
        return "home";
    }

    @RequestMapping(path = "/dologin", method = RequestMethod.POST)
    @ResponseBody
    public JsonMsg dologin(String userName, String password, Model model) {

        System.out.println(userName + password);

        User user = userService.findByUserName(userName);

        model.addAttribute("address", user.getAddresses());

        System.out.println(user.getAddresses());

        model.addAttribute("user", user);

        int len = user.getOrders().size();

        Page page = new PageInit().pageInit(len);

        model.addAttribute("page", page);

        int ofset = (page.getPageNow() - 1) * page.getLimit();

        List<Order> orders = orderService.findOrderByPage(userName, ofset, page.getLimit());

        model.addAttribute("orders", orders);

        model.addAttribute("orderState", 4);

        if (user.getPassword().equals(password) == false){
            return JsonMsg.fail().addInfo("login_error", "输入账号用户名与密码不匹配，请重新输入！");
        }
        return JsonMsg.success();
    }
}
