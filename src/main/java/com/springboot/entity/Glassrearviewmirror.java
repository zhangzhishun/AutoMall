package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * glassrearviewmirror
 * @author 
 */
@Data
public class Glassrearviewmirror implements Serializable {
    /**
     * 玻璃后视镜配置iD
     */
    private Integer grmid;

    /**
     * 前后电动车窗
     */
    private String grmelectricwindow;

    /**
     * 车窗一键升降
     */
    private String grmonebuttonwindowlifting;

    /**
     * 车窗防夹手
     */
    private String grmwindowantipinch;

    /**
     * 多层隔音玻璃
     */
    private String grmmultilayersoundproofglass;

    /**
     * 外后视镜
     */
    private String grmexteriormirror;

    /**
     * 内后视镜
     */
    private String grminteriormirror;

    /**
     * 后风挡遮阳帘
     */
    private String grmrearwindshieldblind;

    /**
     * 后排侧窗遮阳帘
     */
    private String grmrearsidewindowblind;

    /**
     * 后排侧隐私玻璃
     */
    private String grmrearsideprivacyglass;

    /**
     * 车内化妆镜
     */
    private String grminteriorvanitymirror;

    /**
     * 后雨刷
     */
    private String grmrearwiper;

    /**
     * 感应雨刷功能
     */
    private String grmsensingwiper;

    /**
     * 可加热喷水嘴
     */
    private String gmrheatedpenshui;

    private static final long serialVersionUID = 1L;
}