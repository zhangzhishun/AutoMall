package com.springboot.dao;

import com.springboot.entity.Packageselect;
import org.springframework.stereotype.Repository;

@Repository
public interface PackageselectDao {
    int deleteByPrimaryKey(Integer psid);

    int insert(Packageselect record);

    int insertSelective(Packageselect record);

    Packageselect selectByPrimaryKey(Integer psid);

    int updateByPrimaryKeySelective(Packageselect record);

    int updateByPrimaryKey(Packageselect record);
}