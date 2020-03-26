package com.springboot.dao;

import com.springboot.entity.Electricmotor;
import org.springframework.stereotype.Repository;

@Repository
public interface ElectricmotorDao {
    int deleteByPrimaryKey(Integer emid);

    int insert(Electricmotor record);

    int insertSelective(Electricmotor record);

    Electricmotor selectByPrimaryKey(Integer emid);

    int updateByPrimaryKeySelective(Electricmotor record);

    int updateByPrimaryKey(Electricmotor record);
}