package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * electricmotor
 * @author 
 */
@Data
public class Electricmotor implements Serializable {
    /**
     * 电动机ID
     */
    private Integer emid;

    /**
     * 电机类型
     */
    private String emtype;

    /**
     * 电机总功率
     */
    private String emaggregatecapacity;

    /**
     * 电机总扭矩
     */
    private String emtotaltorque;

    /**
     * 前电动机最大功率
     */
    private String emmaxpowerfrontmotor;

    /**
     * 前电动机最大扭矩
     */
    private String emmaxtorquefrontmotor;

    /**
     * 后电动机最大功率
     */
    private String emmaxpowerrearmotor;

    /**
     * 后电动机最大扭矩
     */
    private String emmaxtorquerearmotor;

    /**
     * 系统综合功率
     */
    private String emsystemintegratedpower;

    /**
     * 系统综合扭矩
     */
    private String emintegratedtorquesys;

    /**
     * 驱动电机数
     */
    private Integer emnumbermotordrivers;

    /**
     * 电机布局
     */
    private String emmotorlayout;

    /**
     * 电池类型
     */
    private String embatterytype;

    /**
     * 工信部纯电续航里程
     */
    private String empurerange;

    /**
     * 电池能量
     */
    private String emenergycontentofbattery;

    /**
     * 百公里耗电量
     */
    private String em100kmelectricityconsumption;

    /**
     * 电池组质保
     */
    private String embatterypackwarranty;

    /**
     * 快充时间
     */
    private String emquickcharge;

    /**
     * 慢充时间
     */
    private String emslowchargetime;

    /**
     * 快充电量
     */
    private String emfastCharge;

    private static final long serialVersionUID = 1L;
}