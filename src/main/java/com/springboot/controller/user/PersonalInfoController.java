package com.springboot.controller.user;

import com.springboot.service.user.PersonalInfoService;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.websocket.server.PathParam;
import java.util.List;

/**
 * <h3>AutoMall</h3>
 * <p>用户的个人信息维护</p>
 *
 * @author : sugar without coffee
 * @date : 2020-03-26 16:25
 **/
@Controller
@RequestMapping("user")
public class PersonalInfoController {
    @Autowired
    private PersonalInfoService personalInfoServiceImpl;

    @GetMapping("getPersonalInfo")
    public String getPersonalInfo(@PathParam("userId") Integer userId, Model model){
        List<Object> result = personalInfoServiceImpl.selectUserByuserId(userId);
        model.addAttribute("user",personalInfoServiceImpl.selectUserByuserId(userId));
        return "user/getInfo";
    }

}
