package com.springboot.service.user;

import java.util.List;

public interface BrowseCarService {
    /**
     * 浏览指定车辆
     * @param carId 用户ID
     * @return boolean
     * */
    List<Object> getCarBycarId(Integer carId);
}
