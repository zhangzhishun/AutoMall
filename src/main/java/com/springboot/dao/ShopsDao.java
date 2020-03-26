package com.springboot.dao;

import com.springboot.entity.Shops;
import org.springframework.stereotype.Repository;

@Repository
public interface ShopsDao {
    int deleteByPrimaryKey(Integer shopsid);

    int insert(Shops record);

    int insertSelective(Shops record);

    Shops selectByPrimaryKey(Integer shopsid);

    int updateByPrimaryKeySelective(Shops record);

    int updateByPrimaryKey(Shops record);
}