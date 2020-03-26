package com.springboot.dao;

import com.springboot.entity.Collectionrecord;
import org.springframework.stereotype.Repository;

@Repository
public interface CollectionrecordDao {
    int deleteByPrimaryKey(Integer crfid);

    int insert(Collectionrecord record);

    int insertSelective(Collectionrecord record);

    Collectionrecord selectByPrimaryKey(Integer crfid);

    int updateByPrimaryKeySelective(Collectionrecord record);

    int updateByPrimaryKey(Collectionrecord record);
}