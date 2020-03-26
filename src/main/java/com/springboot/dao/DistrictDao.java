package com.springboot.dao;

import com.springboot.entity.District;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DistrictDao {
    int deleteByPrimaryKey(Integer id);

    int insert(District record);

    int insertSelective(District record);

    District selectByPrimaryKey(Integer id);

    List<Object> getDistrictChild(Integer pid);

    int updateByPrimaryKeySelective(District record);

    int updateByPrimaryKey(District record);
}