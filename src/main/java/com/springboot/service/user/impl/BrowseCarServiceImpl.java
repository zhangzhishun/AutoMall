package com.springboot.service.user.impl;

import com.springboot.dao.CarDao;
import com.springboot.service.user.BrowseCarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <h3>AutoMall</h3>
 * <p>用户查看订单</p>
 *
 * @author : sugar without coffee
 * @date : 2020-03-20 08:26
 **/
@Service
public class BrowseCarServiceImpl implements BrowseCarService {
    @Autowired
    private CarDao carDaoImpl;


    @Override
    public List<Object> getCarBycarId(Integer carId) {
        return carDaoImpl.selectAllInfoByPrimaryKey(carId);
    }
}
