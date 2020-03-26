package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * seat
 * @author 
 */
@Data
public class Seat implements Serializable {
    /**
     * 座椅ID
     */
    private Integer sid;

    /**
     * 座椅材质
     */
    private String stheseatmaterial;

    /**
     * 运动风格座椅
     */
    private String ssportsseats;

    /**
     * 主座椅调节方式
     */
    private String smainseatadjustmentmode;

    /**
     * 副座椅调节方式
     */
    private String sviceseatadjustmentmode;

    /**
     * 主副驾驶座电动调节
     */
    private String sseatmotorcontrol;

    /**
     * 前排座椅功能
     */
    private String sfrontseatfunction;

    /**
     * 电动座椅记忆功能
     */
    private String selectricchairmemory;

    /**
     * 副驾驶位后排可调节按钮
     */
    private String sthebackadjustsviceseatButton;

    /**
     * 第二排座椅调节
     */
    private String ssecondrowseatadjustment;

    /**
     * 后排座椅电动调节
     */
    private String sbackrowseatfunction;

    /**
     * 后排座椅功能
     */
    private String sbackrowfunctionseat;

    /**
     * 后排小桌板
     */
    private String sbackrowsmalltable;

    /**
     * 第二排独立座椅
     */
    private String ssecondrowindependentseats;

    /**
     * 座椅布局
     */
    private String sseatlayout;

    /**
     * 后排座椅放倒形式
     */
    private String sbackrowseatinvertedform;

    /**
     * 后排座椅电动放倒
     */
    private String stherearseatelectricallyreclined;

    /**
     * 前后中央扶手
     */
    private String sfrontandrearcenterhandrail;

    /**
     * 后排杯架
     */
    private String stherearstand;

    /**
     * 加热制冷杯架
     */
    private String sheatcoolingcupholder;

    private static final long serialVersionUID = 1L;
}