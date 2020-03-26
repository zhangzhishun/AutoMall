package com.springboot.dao;

import com.springboot.entity.Internal;
import org.springframework.stereotype.Repository;

@Repository
public interface InternalDao {
    int deleteByPrimaryKey(Integer iid);

    int insert(Internal record);

    int insertSelective(Internal record);

    Internal selectByPrimaryKey(Integer iid);

    int updateByPrimaryKeySelective(Internal record);

    int updateByPrimaryKey(Internal record);
}