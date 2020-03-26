package com.springboot.service.user.impl;

import com.springboot.dao.OrderformDao;
import com.springboot.service.user.OrderService;
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
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderformDao orderformDaoImpl;

    @Override
    public List<Object> getOrderFormByuserId(Integer userId) {
        return orderformDaoImpl.selectByuserId(userId);
    }
}
