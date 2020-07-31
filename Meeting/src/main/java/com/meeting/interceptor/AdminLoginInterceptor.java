package com.meeting.interceptor;

import com.meeting.model.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminLoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //在拦截点执行前拦截，如果返回true则不执行拦截点后的操作（拦截成功）
        //返回false则不执行拦截

        HttpSession session = request.getSession();

        String admin = (String) session.getAttribute("admin");

        //System.out.println(admin);

        if(admin == null) {
            //登录失败，跳转到登录页
            response.sendRedirect(request.getContextPath() + "/home");
            return false;
        }else{
            //登陆成功，不拦截
            return true;
        }
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
