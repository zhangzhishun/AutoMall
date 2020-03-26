package com.springboot.dao;

import com.springboot.entity.Orderform;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderformDao {
    int deleteByPrimaryKey(Integer ofid);

    int insert(Orderform record);

    int insertSelective(Orderform record);

    Orderform selectByPrimaryKey(Integer ofid);

    List<Object> selectByuserId(Integer userId);

    int updateByPrimaryKeySelective(Orderform record);

    int updateByPrimaryKey(Orderform record);
}