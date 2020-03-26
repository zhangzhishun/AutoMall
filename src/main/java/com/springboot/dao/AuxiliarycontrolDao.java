package com.springboot.dao;

import com.springboot.entity.Auxiliarycontrol;
import org.springframework.stereotype.Repository;

@Repository
public interface AuxiliarycontrolDao {
    int deleteByPrimaryKey(Integer acid);

    int insert(Auxiliarycontrol record);

    int insertSelective(Auxiliarycontrol record);

    Auxiliarycontrol selectByPrimaryKey(Integer acid);

    int updateByPrimaryKeySelective(Auxiliarycontrol record);

    int updateByPrimaryKey(Auxiliarycontrol record);
}