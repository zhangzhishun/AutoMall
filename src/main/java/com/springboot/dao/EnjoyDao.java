package com.springboot.dao;

import com.springboot.entity.Enjoy;
import org.springframework.stereotype.Repository;

@Repository
public interface EnjoyDao {
    int deleteByPrimaryKey(Integer enjoyid);

    int insert(Enjoy record);

    int insertSelective(Enjoy record);

    Enjoy selectByPrimaryKey(Integer enjoyid);

    int updateByPrimaryKeySelective(Enjoy record);

    int updateByPrimaryKey(Enjoy record);
}