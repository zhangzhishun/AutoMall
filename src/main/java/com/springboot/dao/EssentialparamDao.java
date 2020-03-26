package com.springboot.dao;

import com.springboot.entity.Essentialparam;
import org.springframework.stereotype.Repository;

@Repository
public interface EssentialparamDao {
    int deleteByPrimaryKey(Integer cepid);

    int insert(Essentialparam record);

    int insertSelective(Essentialparam record);

    Essentialparam selectByPrimaryKey(Integer cepid);

    int updateByPrimaryKeySelective(Essentialparam record);

    int updateByPrimaryKey(Essentialparam record);
}