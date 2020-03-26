package com.springboot.dao;

import com.springboot.entity.Lightingconfig;
import org.springframework.stereotype.Repository;

@Repository
public interface LightingconfigDao {
    int deleteByPrimaryKey(Integer lcid);

    int insert(Lightingconfig record);

    int insertSelective(Lightingconfig record);

    Lightingconfig selectByPrimaryKey(Integer lcid);

    int updateByPrimaryKeySelective(Lightingconfig record);

    int updateByPrimaryKey(Lightingconfig record);
}