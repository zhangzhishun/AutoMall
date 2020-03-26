package com.springboot.service.user.impl;

import com.springboot.dao.AdminDao;
import com.springboot.dao.UserDao;
import com.springboot.entity.Admin;
import com.springboot.entity.User;
import com.springboot.service.user.LoginAuthService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author sugar without coffee
 * @version 1.0.0
 */
@Service
public class LoginAuthServiceImpl implements LoginAuthService {
    @Autowired
    private UserDao userDaoImpl;
    @Autowired
    private AdminDao adminDaoImpl;

    @Override
    public boolean userLoginAuth(Integer userid, String userPassword) {
        try {
            User user = userDaoImpl.selectByPrimaryKey(userid);
            if(user.getUserpassword().equals(userPassword)) {
                return true;
            }
            return false;
        }catch (NullPointerException e){
            return false;
        }
    }

    @Override
    public boolean adminLoginAuth(Integer adminId, String adminPassword) {
        try {
            Admin admin = adminDaoImpl.selectByPrimaryKey(adminId);
            if(admin.getAdminpassword().equals(adminPassword)) {
                return true;
            }
            return false;
        }catch (NullPointerException e){
            return false;
        }
    }
}
