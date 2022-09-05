package com.controller;
import com.pojo.User;
import com.service.UserService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/*
 * 接收用户登录验证请求的控制器类 UserController，该类要和网页打交道，用于接收网页发来的请求；最后处理网页请求的是
 * 这个类中的某个方法；需要搞清楚的是：网页来的请求具体交给哪个方法处理（也就是一个请求过来时调用哪个方法）？因此这里很重要的是
 * 请求路径与具体方法映射的配置（请求映射），也就是@RequestMapping的配置，请仔细研究以下代码。
 */
@Controller  //告知spring，该类是控制器类，也就是要 把这类纳入spring的管理范围
public class UserController {
    //得到一个用来记录日志的对象，这样打印信息的时候能够标记打印的是那个类的信息
    private static final Log logger = LogFactory.getLog(UserController.class);
     // 登录页面初始化
    @RequestMapping("/toLogin")
    public String initLogin() {
        return "login";
    }
    /**
     * 处理登录功能
     */
    @Autowired // 该属性的赋值由spring自动完成
    private UserService userService;

    @RequestMapping("/login")  //定义资源映射；网页上通过/login访问 login()方法，最终网页访问的路径是：<form action="/login">
    public String login(String username,String password,Model model, HttpSession session){
        User user = userService.login(username, password);
        if(user != null) {
            session.setAttribute("user",user);
            return "success"; // 浏览器显示 success.jsp,网页的保存位置在spring-servlet.xml中配置，
        } else {
            model.addAttribute("msg","用户名或密码错误，请重新登录！");
            return "fail";  //浏览器显示fail.jsp，网页的保存位置在spring-servlet.xml中配置
        }
    }
    /**
     * 跳转到主页面
     */
    @RequestMapping("/success")
    public String toMain() {
        return "success";
    }
    /**
     * 退出登录
     */
    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        //清除session
        session.invalidate();
        return "/login";
    }
}
