package com.springboot.dao;

import com.springboot.entity.Body;
import org.springframework.stereotype.Repository;

@Repository
public interface BodyDao {
    int deleteByPrimaryKey(Double cbid);

    int insert(Body record);

    int insertSelective(Body record);

    Body selectByPrimaryKey(Double cbid);

    int updateByPrimaryKeySelective(Body record);

    int updateByPrimaryKey(Body record);
}