package com.springboot.dao;

import com.springboot.entity.Airconditionedrefrigerator;
import org.springframework.stereotype.Repository;

@Repository
public interface AirconditionedrefrigeratorDao {
    int deleteByPrimaryKey(Integer arid);

    int insert(Airconditionedrefrigerator record);

    int insertSelective(Airconditionedrefrigerator record);

    Airconditionedrefrigerator selectByPrimaryKey(Integer arid);

    int updateByPrimaryKeySelective(Airconditionedrefrigerator record);

    int updateByPrimaryKey(Airconditionedrefrigerator record);
}