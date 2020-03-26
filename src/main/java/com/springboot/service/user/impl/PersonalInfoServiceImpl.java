package com.springboot.service.user.impl;

import com.springboot.dao.DistrictDao;
import com.springboot.dao.UserDao;
import com.springboot.entity.User;
import com.springboot.service.user.PersonalInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @author sugar without coffee
 * @version 1.0.0
 */
@Service
public class PersonalInfoServiceImpl implements PersonalInfoService {
    @Autowired
    private UserDao userDaoImpl;
    @Autowired
    private DistrictDao districtDaoImpl;

    @Override
    public List<Object> selectUserByuserId(Integer userId) {
        List<Object> result = userDaoImpl.selectAllByPrimaryKey(userId);
        /** 通过遍历将地址编号转为汉字 */
        for (int i = 0; i < result.size(); i++) {
            Map<String,String> map = (Map<String, String>) result.get(i);
            String[] dis = map.get("district_sqe").split("\\.");
            String address = "";
            // 样式 .1.2. 使用.来分割，首位去除
            for (int j = 1; j < dis.length; j++) {
                address += districtDaoImpl.selectByPrimaryKey(Integer.valueOf(dis[j])).getDistrictName()+" ";
            }
            map.put("address",address);
            result.set(i,map);
        }
        return result;
    }

    @Override
    public Integer updateUser(User user) {
        return userDaoImpl.updateByPrimaryKey(user);
    }
}
