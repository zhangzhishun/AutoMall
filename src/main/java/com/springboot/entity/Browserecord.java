package com.springboot.entity;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * browserecord
 * @author 
 */
@Data
public class Browserecord implements Serializable {
    /**
     * 浏览记录表
     */
    private Integer brfid;

    /**
     * 浏览用户
     */
    private Integer userid;

    /**
     * 浏览时间
     */
    private Date brftime;

    /**
     * 浏览汽车ID
     */
    private Integer carid;

    private static final long serialVersionUID = 1L;
}