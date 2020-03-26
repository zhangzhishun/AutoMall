package com.springboot.dao;

import com.springboot.entity.Browserecord;
import org.springframework.stereotype.Repository;

@Repository
public interface BrowserecordDao {
    int deleteByPrimaryKey(Integer brfid);

    int insert(Browserecord record);

    int insertSelective(Browserecord record);

    Browserecord selectByPrimaryKey(Integer brfid);

    int updateByPrimaryKeySelective(Browserecord record);

    int updateByPrimaryKey(Browserecord record);
}