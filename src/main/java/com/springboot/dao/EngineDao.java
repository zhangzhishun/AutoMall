package com.springboot.dao;

import com.springboot.entity.Engine;
import org.springframework.stereotype.Repository;

@Repository
public interface EngineDao {
    int deleteByPrimaryKey(Integer enid);

    int insert(Engine record);

    int insertSelective(Engine record);

    Engine selectByPrimaryKey(Integer enid);

    int updateByPrimaryKeySelective(Engine record);

    int updateByPrimaryKey(Engine record);
}