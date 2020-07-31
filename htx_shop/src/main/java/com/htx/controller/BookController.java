package com.htx.controller;

import com.htx.model.Book;
import com.htx.model.Order;
import com.htx.model.User;
import com.htx.service.IBookService;
import com.htx.service.IOrderService;
import com.htx.service.IUserService;
import com.htx.util.JsonMsg;
import org.aspectj.weaver.ast.Or;
import org.omg.PortableInterceptor.INACTIVE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Queue;

/**
 * @Description TODO
 * @ClassName: BookController
 * @Author: htx
 * @Date: Created in 0:37 2020/6/21
 * @Version 1.0
 */
@Controller
@SessionAttributes(value = {"books"})
@RequestMapping(path = "/book")
public class BookController {

    @Autowired
    private IBookService bookService;

    @Autowired
    private IOrderService orderService;

    @Autowired
    private IUserService userService;

    @RequestMapping(path = "/{bookId}")
    public ModelAndView getBookDetail(@PathVariable String bookId) {

        ModelAndView mv = new ModelAndView();

        int id = Integer.parseInt(bookId);

        Book book = bookService.findBookById(id);

        mv.addObject("book", book);

        mv.setViewName("bookDetail");

        return mv;
    }

    @RequestMapping(path = "searchBook")
    public String searchBook() {
        return "searchBook";
    }


    @RequestMapping(path = "/search")
    public String  searchBookDetail(String bookName, HttpServletRequest request) {

        List<Book> books = bookService.findByBookName(bookName);

        System.out.println(books);

        HttpSession session = request.getSession();

        session.setAttribute("searchBook", books);

        return "redirect:/book/searchBook";
    }

    @RequestMapping(path = "/buyBook")
    @ResponseBody
    public JsonMsg buyBook(HttpServletRequest request, String buyid, String buynum, String address) {
        System.out.println(buyid + " " + buynum);

        HttpSession session = request.getSession();

        User user = (User) session.getAttribute("user");

        if(buynum == null || buynum == "") {
            return JsonMsg.fail().addInfo("buyerror", "请输入正确的购买数量");
        }

        int bookid = Integer.parseInt(buyid);

        int booknum = Integer.parseInt(buynum);

        Book book = bookService.findBookById(bookid);

        if(book.getStock() - booknum < 0) {
            return JsonMsg.fail().addInfo("buyerror", "请输入正确的购买数量");
        }

        Order order = new Order();

        order.setUserName(user.getUserName());
        order.setBookImg(book.getBookImg());
        order.setCost(book.getPrice() * booknum);
        order.setAddress(address);
        order.setPhone(user.getPhone());
        order.setBookNumber(booknum);
        order.setState(0);
        order.setBookId(bookid);

        book.setStock(book.getStock() - booknum);
        System.out.println(book);

        bookService.updateBook(book);
        orderService.saveOrder(order);
        User temp = userService.findByUserName(user.getUserName());

        List<Book> books = bookService.findBookAll();

        session.setAttribute("user", temp);
        session.setAttribute("books", books);

        return JsonMsg.success();
    }



    @RequestMapping(path = "/findAll")
    public ModelAndView finAllBook() {

        ModelAndView mv = new ModelAndView();

        List<Book> books = bookService.findBookAll();

        mv.addObject("books", books);

        mv.setViewName("home");

        return mv;
    }

}
