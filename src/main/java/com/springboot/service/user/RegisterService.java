package com.springboot.service.user;

import com.springboot.entity.User;

public interface RegisterService {

    /**
     * 用户注册
     * @param user 用户类
     * @return boolean
     * */
    boolean userRegister(User user);

}
