package com.springboot.service.user;

import java.util.List;

public interface OrderService {
    /**
     * 查看用户的所有订单
     * @param userId 用户ID
     * @return boolean
     * */
    List<Object> getOrderFormByuserId(Integer userId);
}
