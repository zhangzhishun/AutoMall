package com.springboot.service.user;

import com.springboot.entity.User;

import java.util.List;

public interface PersonalInfoService {

    /**
     * 查看用户信息
     * @param userId 用户ID
     * @return boolean
     * */
    List<Object> selectUserByuserId(Integer userId);

    /**
     * 更新用户信息
     * @param user 用户类
     * @return boolean
     * */
    Integer updateUser(User user);

}
