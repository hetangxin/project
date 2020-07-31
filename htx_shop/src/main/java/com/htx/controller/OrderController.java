package com.htx.controller;

import com.htx.dao.OrderDao;
import com.htx.model.Book;
import com.htx.model.Order;
import com.htx.model.Page;
import com.htx.model.User;
import com.htx.service.IBookService;
import com.htx.service.IOrderService;
import com.htx.service.IUserService;
import com.htx.service.impl.OrderService;
import com.htx.util.JsonMsg;
import com.htx.util.PageInit;
import org.aspectj.weaver.ast.Or;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @Description TODO
 * @ClassName: OrderController
 * @Author: htx
 * @Date: Created in 0:24 2020/6/21
 * @Version 1.0
 */
@Controller
@RequestMapping(path = "/order")
public class OrderController {

    @Autowired
    private IOrderService orderService;

    @Autowired
    private IBookService bookService;

    @Autowired
    private IUserService userService;

    @RequestMapping(path = "/myOrder")
    public String myOrder() {
        return "myOrder";
    }

    @RequestMapping(path = "/searchOrder")
    public String searchOrder() {
        return "searchOrder";
    }

    @RequestMapping(path = "/{orderState}")
    public String orderState(HttpServletRequest request,  @PathVariable String orderState) {
        HttpSession session = request.getSession();

        if(session.getAttribute("searchOrder") != null) {
            session.removeAttribute("searchOrder");
        }
        if(session.getAttribute("searchName") != null) {
            session.removeAttribute("searchName");
        }

        User user = ((User)session.getAttribute("user"));

        int state = Integer.parseInt(orderState);

        session.setAttribute("orderState", state);

        List<Order> orders = user.getOrders();

        List<Order> temp = new ArrayList<Order>();

        if(state != 4) {
            for (Order order : orders) {
                if(state == order.getState()) {
                    //System.out.println(order);
                    temp.add(order);
                }
            }
            //System.out.println(state);
            //System.out.println(temp);

            int len = temp.size();

            //System.out.println(len);

            Page page = new PageInit().pageInit(len);

            //System.out.println(page);

            List<Order> order = new ArrayList<Order>();

            int minn = Math.min(page.getLimit(), temp.size());

            for(int i = 0; i < minn; ++i) {
                order.add(temp.get(i));
            }

            session.setAttribute("page", page);

            session.setAttribute("orders", order);
        } else {
            int len = user.getOrders().size();
            Page page = new PageInit().pageInit(len);
            session.setAttribute("page", page);
            int ofset = (page.getPageNow() - 1) * page.getLimit();

            List<Order> o = orderService.findOrderByPage(user.getUserName(), ofset, page.getLimit());

            session.setAttribute("orders", o);

        }
        return "myOrder";
    }


    @RequestMapping(path = "/pageNext")
    public String pageNext(HttpSession session) {

        Page pageNext = (Page) session.getAttribute("page");

        pageNext.setPageNow(pageNext.getPageNow() + 1);

        return getString(session, pageNext);
    }

    @RequestMapping(path = "/pagePre")
    public String pagePre(HttpSession session) {

        Page pagePre = (Page) session.getAttribute("page");

        pagePre.setPageNow(pagePre.getPageNow() - 1);

        return getString(session, pagePre);
    }

    private String getString(HttpSession session, Page page) {
        User user = (User) session.getAttribute("user");

        int ofset = (page.getPageNow() - 1) * page.getLimit();

        Integer orderState = (int)session.getAttribute("orderState");

        List<Order> orders = null;

        System.out.println(orderState);

        if(orderState == 4) {
            orders = orderService.findOrderByPage(user.getUserName(), ofset, page.getLimit());
        } else {
            orders = orderService.findOrderByPageAndState(user.getUserName(), ofset, page.getLimit(), orderState.toString());
        }

        System.out.println(orders);

        session.setAttribute("orders", orders);
        return "redirect:/order/myOrder";
    }


    @RequestMapping(path = "/search")
    public String search(String bookName, HttpServletRequest request) {

        HttpSession session = request.getSession();

        List<Book> books = bookService.findByBookName(bookName);

        List<Order> orders = orderService.findOrderByBookId(books, ((User)session.getAttribute("user")).getUserName());

        session.setAttribute("searchOrder", orders);

        session.setAttribute("searchName", bookName);

        return "redirect:/order/searchOrder";
    }


    @RequestMapping(path = "/deleteOrder/{orderId}")
    public String deleteOrder(@PathVariable String orderId) {


        boolean flag = true;

        if(orderId.charAt(0) =='s') {
            flag = false;
        }

        int id = 0;

        for(int i = 1; i < orderId.length(); ++i) {
            id = id * 10 + (orderId.charAt(i) - '0');
        }

        orderService.deleteOrder(id);

        if(flag) {
            return "redirect:/order/resetPage/1";
        } else {
            return "redirect:/order/resetPage/0";
        }

    }

    @RequestMapping(path = "/resetPage/{flag}")
    public String resetPage(HttpServletRequest request, @PathVariable String flag) {

        int orderFlag = Integer.parseInt(flag);

        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");

        User temp = userService.findByUserName(user.getUserName());

        session.setAttribute("user", temp);

        Page page = new PageInit().pageInit(temp.getOrders().size());

        session.setAttribute("page", page);

        int ofset = (page.getPageNow() - 1) * page.getLimit();

        List<Order> orders = orderService.findOrderByPage(user.getUserName(), ofset, page.getLimit());

        session.setAttribute("orders", orders);
        if(orderFlag == 1) {
            return "redirect:/order/myOrder";
        } else {
            String bookName = (String) session.getAttribute("searchName");

            List<Book> books = bookService.findByBookName(bookName);

            List<Order> searchOrders = orderService.findOrderByBookId(books, ((User)session.getAttribute("user")).getUserName());

            session.setAttribute("searchOrder", searchOrders);

            return "redirect:/order/searchOrder";
        }

    }

}
