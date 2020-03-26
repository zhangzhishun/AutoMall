package com.springboot.dao;

import com.springboot.entity.Gearbox;
import org.springframework.stereotype.Repository;

@Repository
public interface GearboxDao {
    int deleteByPrimaryKey(Integer gbid);

    int insert(Gearbox record);

    int insertSelective(Gearbox record);

    Gearbox selectByPrimaryKey(Integer gbid);

    int updateByPrimaryKeySelective(Gearbox record);

    int updateByPrimaryKey(Gearbox record);
}