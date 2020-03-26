package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * internal
 * @author 
 */
@Data
public class Internal implements Serializable {
    /**
     * 内部配置ID
     */
    private Integer iid;

    /**
     * 方向盘材质
     */
    private String iswmaterial;

    /**
     * 方向盘调节位置
     */
    private String iswadjust;

    /**
     * 多功能方向盘
     */
    private String imultifuncsw;

    /**
     * 方向盘换挡
     */
    private String iswshift;

    /**
     * 方向盘加热
     */
    private String iswheating;

    /**
     * 方向盘记忆
     */
    private String iswmemory;

    /**
     * 行车电脑显示屏幕
     */
    private String idrivingcomputerdisplayscreen;

    /**
     * 全液晶仪表盘
     */
    private String ifulllcdinstrumentpanel;

    /**
     * 液晶仪表尺寸
     */
    private String iliquidcrystalinstrumentsize;

    /**
     * HBU抬头数字显示
     */
    private String ihbuheadUpdigitaldisplay;

    /**
     * 内置行车记录仪
     */
    private String ibuiltIncarrecorder;

    /**
     * 主动降噪
     */
    private String iactivenoisecontrol;

    /**
     * 手机无线充电功能
     */
    private String iwirelesschargingofmobilephone;

    /**
     * 电动可调踏板
     */
    private String ielectricadjustablepedal;

    private static final long serialVersionUID = 1L;
}