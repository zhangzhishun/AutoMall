package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * activepassivesafetydevice
 * @author 
 */
@Data
public class Activepassivesafetydevice implements Serializable {
    /**
     * 主被动安全装置ID
     */
    private Integer apsdid;

    /**
     * 主副驾驶安全气囊
     */
    private String apsdairbag;

    /**
     * 前后排侧气囊
     */
    private String apsdfrontrearairbags;

    /**
     * 前后排头部气囊
     */
    private String apsdfrontrearheadairbag;

    /**
     * 膝部气囊
     */
    private String apsdkneeairbag;

    /**
     * 副驾驶坐垫式气囊
     */
    private String apsdcopilotcushionairbag;

    /**
     * 后排安全带式气囊
     */
    private String apsdbackwardbeltairbag;

    /**
     * 后排座椅防下滑气囊
     */
    private String apsdbackseatantislideairbag;

    /**
     * 后排中央安全气囊
     */
    private String apsdrearcentreairbag;

    /**
     * 被动行人保护
     */
    private String apsdpassivepedestrianprotection;

    /**
     * 胎压监测功能
     */
    private String apsdtirepressuremonitoringfunction;

    /**
     * 零胎压继续行驶
     */
    private String apsdzerotirepressuredriving;

    /**
     * 安全带未戴提醒
     */
    private String apsdsafetybeltnotwornreminder;

    /**
     * ISOFIX儿童座椅接口
     */
    private String apsdisofixchildseatinterface;

    /**
     * ABS防抱死系统
     */
    private String apsdabs;

    /**
     * 制动力分配
     */
    private String apsdbrakeforcedistribution;

    /**
     * 刹车辅助
     */
    private String apsdbrakeassist;

    /**
     * 牵引力控制
     */
    private String apsdtractioncontrol;

    /**
     * 车身稳定控制
     */
    private String apsdbodystabilitycontrol;

    /**
     * 并线辅助
     */
    private String apsddoublingassistance;

    /**
     * 车道偏离预警
     */
    private String apsdlanedeparturewarning;

    /**
     * 车道保持系统
     */
    private String apsdlanekeepingassist;

    /**
     * 道路交通标识识别系统
     */
    private String apsdidentificationroadtrafficsigns;

    /**
     * 主动刹车系统
     */
    private String apsdactivebrakesystem;

    /**
     * 夜视系统
     */
    private String apsdnightvisionsystem;

    /**
     * 疲劳驾驶提示
     */
    private String apsdfatiguedrivingtips;

    private static final long serialVersionUID = 1L;
}