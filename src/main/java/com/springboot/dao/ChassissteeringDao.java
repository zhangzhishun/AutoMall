package com.springboot.dao;

import com.springboot.entity.Chassissteering;
import org.springframework.stereotype.Repository;

@Repository
public interface ChassissteeringDao {
    int deleteByPrimaryKey(Integer csid);

    int insert(Chassissteering record);

    int insertSelective(Chassissteering record);

    Chassissteering selectByPrimaryKey(Integer csid);

    int updateByPrimaryKeySelective(Chassissteering record);

    int updateByPrimaryKey(Chassissteering record);
}