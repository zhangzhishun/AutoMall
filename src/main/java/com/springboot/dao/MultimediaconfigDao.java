package com.springboot.dao;

import com.springboot.entity.Multimediaconfig;
import org.springframework.stereotype.Repository;

@Repository
public interface MultimediaconfigDao {
    int deleteByPrimaryKey(Integer mcid);

    int insert(Multimediaconfig record);

    int insertSelective(Multimediaconfig record);

    Multimediaconfig selectByPrimaryKey(Integer mcid);

    int updateByPrimaryKeySelective(Multimediaconfig record);

    int updateByPrimaryKey(Multimediaconfig record);
}