package com.springboot.dao;

import com.springboot.entity.Userwork;
import org.springframework.stereotype.Repository;

@Repository
public interface UserworkDao {
    int deleteByPrimaryKey(Integer workid);

    int insert(Userwork record);

    int insertSelective(Userwork record);

    Userwork selectByPrimaryKey(Integer workid);

    int updateByPrimaryKeySelective(Userwork record);

    int updateByPrimaryKey(Userwork record);
}