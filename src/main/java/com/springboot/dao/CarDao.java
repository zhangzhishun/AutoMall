package com.springboot.dao;

import com.springboot.entity.Car;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CarDao {
    int deleteByPrimaryKey(Integer carid);

    int insert(Car record);

    int insertSelective(Car record);

    Car selectByPrimaryKey(Integer carid);

    List<Object> selectAllInfoByPrimaryKey(Integer carid);

    int updateByPrimaryKeySelective(Car record);

    int updateByPrimaryKey(Car record);
}