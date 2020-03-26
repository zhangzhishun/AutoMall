package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * exteriorsecurity
 * @author 
 */
@Data
public class Exteriorsecurity implements Serializable {
    /**
     * 外部/防盗配置ID
     */
    private Integer esid;

    /**
     * 天窗类型
     */
    private String esskylighttype;

    /**
     * 运动外观套件
     */
    private String essportspackage;

    /**
     * 轮圈材质
     */
    private String esrimmaterial;

    /**
     * 电动吸合车门
     */
    private String eselectricsuctiondoor;

    /**
     * 侧滑门形式
     */
    private String esslidingdoortype;

    /**
     * 电动后备箱
     */
    private String eselectrictrunk;

    /**
     * 感应后备箱
     */
    private String esinductiontrunk;

    /**
     * 电动后备箱位置记忆
     */
    private String eselectrictrunklocationmemory;

    /**
     * 尾门玻璃独立开启
     */
    private String essterndoorglassopensindependently;

    /**
     * 车顶行李架
     */
    private String esroofrack;

    /**
     * 发动机电子防盗
     */
    private String esengineelectronictheft;

    /**
     * 车内中控锁
     */
    private String esinteriorcontrollock;

    /**
     * 钥匙类型
     */
    private String eskeytype;

    /**
     * 无钥匙启动
     */
    private String eskeylessstart;

    /**
     * 无钥匙进入
     */
    private String eskeylessentry;

    /**
     * 主动闭合式进气格栅
     */
    private String esactiveclosedintakegrille;

    /**
     * 远程启动
     */
    private String esremotestart;

    /**
     * 车侧脚踏板
     */
    private String essidepedal;

    /**
     * 电池预加热
     */
    private String esbatterypreheating;

    private static final long serialVersionUID = 1L;
}