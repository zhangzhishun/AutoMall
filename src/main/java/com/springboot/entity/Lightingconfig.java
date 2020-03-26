package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * lightingconfig
 * @author 
 */
@Data
public class Lightingconfig implements Serializable {
    /**
     * 灯光配置ID
     */
    private Integer lcid;

    /**
     * 近光灯光源
     */
    private String lclowbeamlightsource;

    /**
     * 远光灯光源
     */
    private String lchighbeamlightsource;

    /**
     * 灯光特色功能
     */
    private String lclightingfeatures;

    /**
     * LED日间行车灯
     */
    private String lcleddaytimerunlight;

    /**
     * 自适应远近光
     */
    private String lcadaptivehighlowbeam;

    /**
     * 自动头灯
     */
    private String lcautomaticheadlamp;

    /**
     * 转向辅助灯
     */
    private String lcsteeringassistlamp;

    /**
     * 转向头灯
     */
    private String lcturnheadlamp;

    /**
     * 车前雾灯
     */
    private String lcfrontfoglamp;

    /**
     * 前大灯雨幕模式
     */
    private String lcheadlamprainmode;

    /**
     * 大灯高度可调
     */
    private String lcadjustableheadlightheight;

    /**
     * 大灯清洗装置
     */
    private String lcheadlightcleaningdevice;

    /**
     * 大灯延时关闭
     */
    private String lcheadlampdelayoff;

    /**
     * 触摸式阅读灯
     */
    private String lctouchreadinglamp;

    /**
     * 车内环境氛围灯
     */
    private String lcinteriorambiencelight;

    private static final long serialVersionUID = 1L;
}