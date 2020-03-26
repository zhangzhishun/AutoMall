package com.springboot.dao;

import com.springboot.entity.Wheelbrake;
import org.springframework.stereotype.Repository;

@Repository
public interface WheelbrakeDao {
    int deleteByPrimaryKey(Integer wbid);

    int insert(Wheelbrake record);

    int insertSelective(Wheelbrake record);

    Wheelbrake selectByPrimaryKey(Integer wbid);

    int updateByPrimaryKeySelective(Wheelbrake record);

    int updateByPrimaryKey(Wheelbrake record);
}