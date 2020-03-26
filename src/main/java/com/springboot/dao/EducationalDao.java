package com.springboot.dao;

import com.springboot.entity.Educational;
import org.springframework.stereotype.Repository;

@Repository
public interface EducationalDao {
    int deleteByPrimaryKey(Integer eduid);

    int insert(Educational record);

    int insertSelective(Educational record);

    Educational selectByPrimaryKey(Integer eduid);

    int updateByPrimaryKeySelective(Educational record);

    int updateByPrimaryKey(Educational record);
}