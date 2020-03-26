package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * auxiliarycontrol
 * @author 
 */
@Data
public class Auxiliarycontrol implements Serializable {
    /**
     * 辅助配置ID
     */
    private Integer acid;

    /**
     * 驻车雷达
     */
    private String acparkradar;

    /**
     * 驾驶辅助影像
     */
    private String acimage;

    /**
     * 倒车车侧预警系统
     */
    private String acasternsidewarning;

    /**
     * 巡航系统
     */
    private String accruisesystem;

    /**
     * 驾驶模式切换
     */
    private String acdrivingmodeswitch;

    /**
     * 自动泊车入位
     */
    private String acatutoparking;

    /**
     * 发动机启停
     */
    private String acenginestartandstop;

    /**
     * 自动驻车
     */
    private String acautobrake;

    /**
     * 上坡辅助
     */
    private String acuphillauxiliary;

    /**
     * 陡坡缓降
     */
    private String acslowdownthesteepslopes;

    /**
     * 可变悬架功能
     */
    private String acvariablesuspension;

    /**
     * 空气悬架
     */
    private String acairsuspension;

    /**
     * 电磁感应悬架
     */
    private String acelectromagneticinductionsuspension;

    /**
     * 可变转速比
     */
    private String acvariablesteeringratio;

    /**
     * 中央差速锁
     */
    private String accentraldifferentiallock;

    /**
     * 整体主动转向
     */
    private String acactivesteering;

    /**
     * 限滑差速锁
     */
    private String aclimitedslipdifferentiallock;

    /**
     * 涉水感应系统
     */
    private String acwadeinduction;

    private static final long serialVersionUID = 1L;
}