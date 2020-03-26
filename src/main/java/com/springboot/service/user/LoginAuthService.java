package com.springboot.service.user;

public interface LoginAuthService {

    /**
     * 用户登录验证
     * @param userId 用户登录ID
     * @param userPassword 用户登录密码
     * @return boolean
     * */
    boolean userLoginAuth(Integer userId,String userPassword);

    /**
     * 管理员登录验证
     * @param adminId 管理员登录ID
     * @param adminPassword 管理员登录密码
     * @return boolean
     * */
    boolean adminLoginAuth(Integer adminId,String adminPassword);
}
