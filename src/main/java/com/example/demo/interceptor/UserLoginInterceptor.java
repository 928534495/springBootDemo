package com.example.demo.interceptor;



import com.example.demo.bean.User;
import org.springframework.lang.Nullable;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserLoginInterceptor implements HandlerInterceptor {
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        System.out.println("进入登录拦截器");
        System.out.println("请求路径="+request.getRequestURL());
        User user = (User) request.getSession().getAttribute("user");
        System.out.println("当前登录信息："+user);
        if (user == null) {
            //未登录im
            if (request.getHeader("x-requested-with") != null
                    && request.getHeader("x-requested-with").equalsIgnoreCase("XMLHttpRequest")) {
                //处理ajax请求
                System.out.println("ajax调用");
                response.setHeader("sessionstatus", "timeout");
                response.setStatus(403);
                return false;
            } else {
                //处理controller请求
                String loginStr=request.getContextPath() + "/web/userJsp/login.jsp";
                System.out.println("页面请求");
                System.out.println("登录界面:"+loginStr);
                response.sendRedirect(loginStr);
                return false;
            }

        }
        else
            return true;
    }

    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
                           @Nullable ModelAndView modelAndView) throws Exception {
    }

    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler,
                                @Nullable Exception ex) throws Exception {
    }
}
