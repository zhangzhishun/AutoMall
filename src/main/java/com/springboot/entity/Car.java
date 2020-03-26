package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * car
 * @author 
 */
@Data
public class Car implements Serializable {
    /**
     * 车ID
     */
    private Integer carid;

    /**
     * 车名字
     */
    private String carname;

    /**
     * 车内空调ID
     */
    private Integer arid;

    /**
     * 车身信息ID
     */
    private Integer cbid;

    /**
     * 底盘转向ID
     */
    private Integer csid;

    /**
     * 发动机ID
     */
    private Integer enid;

    /**
     * 基本参数ID
     */
    private Integer cepid;

    /**
     * 变速箱ID
     */
    private Integer gbid;

    /**
     * 选装包ID
     */
    private Integer psid;

    /**
     * 车轮制动ID
     */
    private Integer wbid;

    /**
     * 辅助控制ID
     */
    private Integer acid;

    /**
     * 外部/防盗配置ID
     */
    private Integer esid;

    /**
     * 内部配置ID
     */
    private Integer iid;

    /**
     * 座椅配置ID
     */
    private Integer sid;

    /**
     * 电动机ID
     */
    private Integer emid;

    /**
     * 主被动安全装置ID
     */
    private Integer apsdid;

    /**
     * 多媒体配置ID
     */
    private Integer mcid;

    /**
     * 灯光配置ID
     */
    private Integer lcid;

    /**
     * 玻璃后视镜配置iD
     */
    private Integer grmid;

    private static final long serialVersionUID = 1L;
}