package com.springboot.dao;

import com.springboot.entity.Glassrearviewmirror;
import org.springframework.stereotype.Repository;

@Repository
public interface GlassrearviewmirrorDao {
    int deleteByPrimaryKey(Integer grmid);

    int insert(Glassrearviewmirror record);

    int insertSelective(Glassrearviewmirror record);

    Glassrearviewmirror selectByPrimaryKey(Integer grmid);

    int updateByPrimaryKeySelective(Glassrearviewmirror record);

    int updateByPrimaryKey(Glassrearviewmirror record);
}