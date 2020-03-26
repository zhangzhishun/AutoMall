package com.springboot.service.user.impl;

import com.springboot.dao.UserDao;
import com.springboot.entity.User;
import com.springboot.service.user.RegisterService;
import com.springboot.untils.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author sugar without coffee
 * @version 1.0.0
 */
@Service
public class RegisterServiceImpl implements RegisterService {
    @Autowired
    private UserDao userDaoImpl;

    @Override
    public boolean userRegister(User user) {
        try {
            int result = userDaoImpl.insert(user);
            Slf4j.logger.info("result",result);
            if(result > 0) {
                return true;
            }
            return false;
        }catch (Exception e){
            return false;
        }
    }

}
