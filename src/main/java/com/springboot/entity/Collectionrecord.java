package com.springboot.entity;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * collectionrecord
 * @author 
 */
@Data
public class Collectionrecord implements Serializable {
    /**
     * 收藏记录表
     */
    private Integer crfid;

    /**
     * 收藏者ID
     */
    private Integer userid;

    /**
     * 收藏时间
     */
    private Date crftime;

    /**
     * 收藏的车的ID
     */
    private Integer carid;

    private static final long serialVersionUID = 1L;
}