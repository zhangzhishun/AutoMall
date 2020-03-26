package com.springboot.dao;

import com.springboot.entity.Seat;
import org.springframework.stereotype.Repository;

@Repository
public interface SeatDao {
    int deleteByPrimaryKey(Integer sid);

    int insert(Seat record);

    int insertSelective(Seat record);

    Seat selectByPrimaryKey(Integer sid);

    int updateByPrimaryKeySelective(Seat record);

    int updateByPrimaryKey(Seat record);
}