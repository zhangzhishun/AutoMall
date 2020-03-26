package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * multimediaconfig
 * @author 
 */
@Data
public class Multimediaconfig implements Serializable {
    /**
     * 多媒体配置ID
     */
    private Integer mcid;

    /**
     * 中控彩色液晶屏幕
     */
    private String mccentralcontrolcolorlcdscreen;

    /**
     * 中控液晶屏尺寸
     */
    private String mcsizecentralcontrollcd;

    /**
     * GPS导航系统
     */
    private String mcgps;

    /**
     * 导航路况信息显示
     */
    private String mcnavigationroadinfodisplay;

    /**
     * 道路救援呼叫
     */
    private String mcroadrescuecall;

    /**
     * 中控液晶屏分屏显示
     */
    private String mcsplitscreendisplaycentralcontrol;

    /**
     * 车载电话
     */
    private String mccarphone;

    /**
     * 手机互联
     */
    private String mcmobilephoneinterconnection;

    /**
     * 语音识别控制系统
     */
    private String mcspeechrecognitioncontrol;

    /**
     * 手势控制
     */
    private String mcgesturecontrol;

    /**
     * 面部识别系统
     */
    private String mcfacerecognition;

    /**
     * 车联网
     */
    private String mcvehicleinterconnection;

    /**
     * OTA升级
     */
    private String mcotaupgrade;

    /**
     * 车载电视
     */
    private String mccartv;

    /**
     * 后排液晶屏幕
     */
    private String mcrearlcdscreen;

    /**
     * 后排控制多媒体
     */
    private String mcrearcontrolmultimedia;

    /**
     * 外接音频接口类型
     */
    private String mcexternalaudiosourceinterfacetype;

    /**
     * USB/Type-C接口数量
     */
    private String mcnumberusbinterfaces;

    /**
     * 车载VCD
     */
    private String mcvehiclemountedvcd;

    /**
     * 220V/230V电源
     */
    private String mc220230power;

    /**
     * 行李箱12v电源接口
     */
    private String mctrunk12vpowerinterface;

    /**
     * 扬声器品牌名称
     */
    private String mcspeakerbrandname;

    /**
     * 扬声器数量
     */
    private String mcnumberspeakers;

    private static final long serialVersionUID = 1L;
}