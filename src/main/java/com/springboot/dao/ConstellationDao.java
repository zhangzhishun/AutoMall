package com.springboot.dao;

import com.springboot.entity.Constellation;
import org.springframework.stereotype.Repository;

@Repository
public interface ConstellationDao {
    int deleteByPrimaryKey(Integer conid);

    int insert(Constellation record);

    int insertSelective(Constellation record);

    Constellation selectByPrimaryKey(Integer conid);

    int updateByPrimaryKeySelective(Constellation record);

    int updateByPrimaryKey(Constellation record);
}