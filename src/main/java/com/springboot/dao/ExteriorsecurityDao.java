package com.springboot.dao;

import com.springboot.entity.Exteriorsecurity;
import org.springframework.stereotype.Repository;

@Repository
public interface ExteriorsecurityDao {
    int deleteByPrimaryKey(Integer esid);

    int insert(Exteriorsecurity record);

    int insertSelective(Exteriorsecurity record);

    Exteriorsecurity selectByPrimaryKey(Integer esid);

    int updateByPrimaryKeySelective(Exteriorsecurity record);

    int updateByPrimaryKey(Exteriorsecurity record);
}