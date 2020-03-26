package com.springboot.service.user;

import com.springboot.entity.User;

import java.util.List;

public interface GetDistrictService {

    /**
     * 根据地区代码district_sqe 获取地区
     * @param district_sqe 地区代码
     * @return List<String>
     * */
    List<String> getDistrict(String district_sqe);

    /**
     * 获取某一id的下属id
     * @param pid 父类地区代码
     * @return boolean
     * */
    List<Object> getDistrictChild(Integer pid);

}
