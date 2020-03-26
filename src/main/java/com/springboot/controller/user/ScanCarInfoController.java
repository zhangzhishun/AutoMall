package com.springboot.controller.user;

import com.springboot.service.user.BrowseCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.websocket.server.PathParam;

/**
 * <h3>AutoMall</h3>
 * <p>查看车辆的所有信息</p>
 *
 * @author : sugar without coffee
 * @date : 2020-03-26 14:42
 **/
@Controller
@RequestMapping("user")
public class ScanCarInfoController {
    @Autowired
    private BrowseCarService browseCarServiceImpl;

    @GetMapping("scanCarInfo")
    public Object scanCarInfo(@PathParam("carId") Integer carId, Model model){
        model.addAttribute("car",browseCarServiceImpl.getCarBycarId(carId));
        return "user/getCarAllInfo";
    }
}
