package com.springboot.dao;

import com.springboot.entity.Activepassivesafetydevice;

public interface ActivepassivesafetydeviceDao {
    int deleteByPrimaryKey(Integer apsdid);

    int insert(Activepassivesafetydevice record);

    int insertSelective(Activepassivesafetydevice record);

    Activepassivesafetydevice selectByPrimaryKey(Integer apsdid);

    int updateByPrimaryKeySelective(Activepassivesafetydevice record);

    int updateByPrimaryKey(Activepassivesafetydevice record);
}