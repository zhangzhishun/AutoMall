package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * enjoy
 * @author 
 */
@Data
public class Enjoy implements Serializable {
    /**
     * 用户爱好记录ID
     */
    private Integer enjoyid;

    /**
     * 用户ID
     */
    private Integer userid;

    /**
     * 用户喜欢的车的编号
     */
    private Integer carid;

    private static final long serialVersionUID = 1L;
}