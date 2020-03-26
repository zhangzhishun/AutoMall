package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * essentialparam
 * @author 
 */
@Data
public class Essentialparam implements Serializable {
    /**
     * 基本参数ID
     */
    private Integer cepid;

    /**
     * 厂商
     */
    private String cepfirm;

    /**
     * 级别
     */
    private String ceplevel;

    /**
     * 能源类型
     */
    private String cepenergytype;

    /**
     * 环保标准
     */
    private String cepenvironmentalstandards;

    /**
     * 上市时间
     */
    private String ceplistingtime;

    /**
     * 最大功率
     */
    private String cepmaxpower;

    /**
     * 最大扭矩
     */
    private String cepacrotorque;

    /**
     * 发动机
     */
    private String cepengine;

    /**
     * 变速箱
     */
    private String cepgearbox;

    /**
     * 车身长
     */
    private Double ceplength;

    /**
     * 车宽
     */
    private Double cepwidth;

    /**
     * 车高
     */
    private Double cepheight;

    /**
     * 车身结构
     */
    private String cepbodywork;

    /**
     * 最高车速
     */
    private Double cepmaxspeed;

    /**
     * 官方百公里加速度
     */
    private String cepofficial100kmhacceleration;

    /**
     * 实测百公里加速度
     */
    private String cepmeasured100kmhacceleration;

    /**
     * 实测百公里制动
     */
    private String cepmeasured100kmhbrake;

    /**
     * 工信部综合油耗
     */
    private String cepmiit;

    /**
     * 实测油耗
     */
    private String cepmeasuredfuelconsumption;

    /**
     * 整车质保
     */
    private String cepvehiclewarranty;

    private static final long serialVersionUID = 1L;
}