package com.springboot.controller.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PublicRouteController {

    /**
     * 网站首页
     * */
    @GetMapping("index")
    public String index1(){
        return "index";
    }

    /**
     * 登录请求
     * */
    @GetMapping("login")
    public String loginGet(){
        return "login";
    }

    /**
     * 用户页主页
     * */
    @GetMapping("userMain")
    public String userMainHtml(){
        return "user/main";
    }

    /**
     * 管理员主页
     * */
    @GetMapping("adminMain")
    public String adminMain(){
        return "admin/main";
    }
}
