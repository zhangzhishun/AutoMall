package com.springboot.service.user.impl;

import com.springboot.dao.UserDao;
import com.springboot.entity.User;
import com.springboot.service.user.UpdateUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author sugar without coffee
 * @version 1.0.0
 */
@Service
public class UpdateUserServiceImpl implements UpdateUserService {
    @Autowired
    private UserDao userDaoImpl;


    @Override
    public Integer updateUser(User user) {
        return userDaoImpl.updateByPrimaryKey(user);
    }
}
