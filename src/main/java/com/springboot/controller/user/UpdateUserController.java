package com.springboot.controller.user;

import com.springboot.entity.User;
import com.springboot.service.user.GetDistrictService;
import com.springboot.service.user.RegisterService;
import com.springboot.service.user.UpdateUserService;
import com.springboot.untils.Slf4j;
import com.springboot.untils.httpResult.HttpResult;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.websocket.server.PathParam;

@Controller
@RequestMapping("user")
public class UpdateUserController {
    @Autowired
    private UpdateUserService updateUserServiceImpl;

    @ResponseBody
    @PostMapping("updateUser")
    public Object updateUser(@Param("userAvatar")String userAvatar,@Param("userName")String userName,
                           @Param("userPassword")String userPassword,@Param("userAge")String userAge,@Param("userSex")String userSex,
                           @Param("userEdu")Integer userEdu,@Param("userConstellation")Integer userConstellation,@Param("userDistrict")String userDistrict,
                           @Param("workID")Integer workID,@Param("userId")Integer userId){
        Slf4j.logger.info("用户："+userName+"申请更新");
        User user = new User();
        user.setUserid(userId);
        user.setUseravatar(userAvatar);
        user.setUsername(userName);
        user.setUserpassword(userPassword);
        user.setUserage(userAge);
        user.setUsersex(userSex);
        user.setUseredu(userEdu);
        user.setUserconstellation(userConstellation);
        user.setUserdistrict(userDistrict);
        user.setWorkid(workID);
        Integer result = updateUserServiceImpl.updateUser(user);
        if(result > 0){
            // 返回注册用户的ID
            Slf4j.logger.info("用户："+userName+"更新成功");
            return new HttpResult(user.getUserid());
        }else{
            // 返回错误提示
            Slf4j.logger.info("用户："+userName+"更新失败");
            return new HttpResult(false, 200,"更新失败！", "error");
        }
    }

    @Autowired
    private GetDistrictService getDistrictServiceImpl;
    /**
     * 辅助函数：获取代码地区自雷所有信息  json返回
     * */
    @ResponseBody
    @GetMapping("getDistrictChild")
    public Object getDistrictChild(@PathParam("pid") Integer pid){
        return new HttpResult(getDistrictServiceImpl.getDistrictChild(pid));
    }

}
