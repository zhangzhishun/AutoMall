package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * chassissteering
 * @author 
 */
@Data
public class Chassissteering implements Serializable {
    /**
     * 底盘转向ID
     */
    private Integer csid;

    /**
     * 驱动方式
     */
    private String csdrivetype;

    /**
     * 四驱形式
     */
    private String csfourdrivetype;

    /**
     * 中央差速锁结构
     */
    private String cscentraldifferentiallockstructure;

    /**
     * 前悬挂类型
     */
    private String csfrontsuspension;

    /**
     * 前悬挂类型
     */
    private String csrearsuspension;

    /**
     * 助力结构
     */
    private String csassistancetype;

    /**
     * 车体结构
     */
    private String cscarbodystructure;

    private static final long serialVersionUID = 1L;
}