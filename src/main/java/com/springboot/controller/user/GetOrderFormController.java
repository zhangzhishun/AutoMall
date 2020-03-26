package com.springboot.controller.user;

import com.springboot.dao.OrderformDao;
import com.springboot.service.user.OrderService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.websocket.server.PathParam;

/**
 * <h3>AutoMall</h3>
 * <p>获取指定用户的所有订单</p>
 *
 * @author : sugar without coffee
 * @date : 2020-03-20 08:39
 **/
@Controller
@RequestMapping("user")
public class GetOrderFormController {
    @Autowired
    public OrderService orderServiceImpl;
    @GetMapping("getAllOrder")
    public String getAllOrder(@PathParam("userid") Integer userId, Model model){
        model.addAttribute("order",orderServiceImpl.getOrderFormByuserId(userId));
        return "user/getAllOrder";
    }

    @GetMapping("test")
    @ResponseBody
    public Object test(){
        return "1";
    }
}
