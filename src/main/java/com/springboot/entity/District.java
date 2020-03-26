package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * district
 * @author 
 */
@Data
public class District implements Serializable {
    /**
     * 主键自增
     */
    private Integer id;

    /**
     * 父类id
     */
    private Integer pid;

    /**
     * 城市的名字
     */
    private String districtName;

    /**
     * 城市的类型，0是国，1是省，2是市，3是区
     */
    private Integer type;

    /**
     * 地区所处的层级
     */
    private Integer hierarchy;

    /**
     * 层级序列
     */
    private String districtSqe;

    private static final long serialVersionUID = 1L;
}