package com.springboot.controller.common;

import com.springboot.service.user.LoginAuthService;
import com.springboot.untils.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
public class LoginController {

    @Autowired
    private LoginAuthService loginAuthServiceImpl;

    @PostMapping("login")
    public String loginPost(@RequestParam("id") Integer id, @RequestParam("password") String password,
                            @RequestParam("status") String status, Map<String, Object> map,HttpSession session,Model model){
        // state为user或者为admin
        if("user".equals(status)){
            // 用户登录
            Slf4j.logger.info("用户"+id+"尝试登录");
            if(loginAuthServiceImpl.userLoginAuth(id,password)){
                /** 如果登陆成功 */
                Slf4j.logger.info("用户"+id+"登录成功");
                session.setAttribute("loginID",id);
                return "redirect:userMain";
            }else{
                //登陆失败
                Slf4j.logger.info("用户"+id+"登录失败");
                map.put("msg", "用户名密码错误");
                return "login";
            }
        }else{
            // 管理员登录
            Slf4j.logger.info("管理员"+id+"尝试登录");
            if(loginAuthServiceImpl.adminLoginAuth(id,password)){
                /** 如果登陆成功 */
                Slf4j.logger.info("管理员"+id+"登录成功");
                session.setAttribute("loginID",id);
                return "redirect:adminMain";
            }else{
                //登陆失败
                Slf4j.logger.info("管理员"+id+"登录失败");
                map.put("msg", "用户名密码错误");
                return "login";
            }
        }
    }

}
