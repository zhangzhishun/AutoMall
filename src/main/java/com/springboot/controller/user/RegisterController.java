package com.springboot.controller.user;

import com.springboot.entity.User;
import com.springboot.service.user.RegisterService;
import com.springboot.untils.Slf4j;
import com.springboot.untils.httpResult.HttpResult;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("user")
public class RegisterController {
    @Autowired
    private RegisterService registerServiceImpl;

    @ResponseBody
    @PostMapping("register")
    public Object register(@Param("userAvatar")String userAvatar,@Param("userName")String userName,
                           @Param("userPassword")String userPassword,@Param("userAge")String userAge,@Param("userSex")String userSex,
                           @Param("userEdu")Integer userEdu,@Param("userConstellation")Integer userConstellation,@Param("userDistrict")String userDistrict,
                           @Param("workID")Integer workID){
        Slf4j.logger.info("用户："+userName+"申请注册");
        User user = new User();
        user.setUseravatar(userAvatar);
        user.setUsername(userName);
        user.setUserpassword(userPassword);
        user.setUserage(userAge);
        user.setUsersex(userSex);
        user.setUseredu(userEdu);
        user.setUserconstellation(userConstellation);
        user.setUserdistrict(userDistrict);
        user.setWorkid(workID);
        boolean result = registerServiceImpl.userRegister(user);
        if(result){
            // 返回注册用户的ID
            Slf4j.logger.info("用户："+userName+"注册成功");
            return new HttpResult(user.getUserid());
        }else{
            // 返回错误提示
            Slf4j.logger.info("用户："+userName+"注册失败");
            return new HttpResult(false, 200,"注册失败！", "error");
        }
    }

    @ResponseBody
    @PostMapping("test")
    public Object register(@Param("test")String test){
        return new HttpResult(1);
    }
}
