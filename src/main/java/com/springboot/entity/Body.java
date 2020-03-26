package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * body
 * @author 
 */
@Data
public class Body implements Serializable {
    /**
     * 车身ID
     */
    private Double cbid;

    /**
     * 车身长度
     */
    private Double cblength;

    /**
     * 车身宽度
     */
    private Double cbwidth;

    /**
     * 车身高度
     */
    private Double cbheight;

    /**
     * 轴距
     */
    private String cbwheelbase;

    /**
     * 前轮距
     */
    private String cbfrontgauge;

    /**
     * 后轮距
     */
    private String cbreartrack;

    /**
     * 最小离地间距
     */
    private String cbminclearancefromground;

    /**
     * 车身结构
     */
    private String cbbodywork;

    /**
     * 车门数
     */
    private Integer cbdoornumber;

    /**
     * 座位数
     */
    private String cbseating;

    /**
     * 油箱容积
     */
    private String cbfueltankcapacity;

    /**
     * 行李箱容积
     */
    private String cbbaggagevolume;

    /**
     * 整备质量
     */
    private Double cbcurbweight;

    private static final long serialVersionUID = 1L;
}