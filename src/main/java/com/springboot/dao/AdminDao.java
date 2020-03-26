package com.springboot.dao;

import com.springboot.entity.Admin;
import org.springframework.stereotype.Repository;

@Repository
public interface AdminDao {
    int deleteByPrimaryKey(Integer adminid);

    int insert(Admin record);

    int insertSelective(Admin record);

    Admin selectByPrimaryKey(Integer adminid);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
}