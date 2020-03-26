package com.springboot.service.user;

import com.springboot.entity.User;

public interface UpdateUserService {

    /**
     * 更新用户信息
     * @param user 用户类
     * @return Integer
     * */
    Integer updateUser(User user);

}
