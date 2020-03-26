package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * airconditionedrefrigerator
 * @author 
 */
@Data
public class Airconditionedrefrigerator implements Serializable {
    /**
     * 空调冰箱ID
     */
    private Integer arid;

    /**
     * 空调温度控制方式
     */
    private String aractc;

    /**
     * 后排独立空调
     */
    private String arbriac;

    /**
     * 后座出风口
     */
    private String arrearoutlet;

    /**
     * 温度分区控制
     */
    private String artemperaturedivisionalcontrol;

    /**
     * 车载空气净化器
     */
    private String arvehicleairpurifier;

    /**
     * 车内PM2.5过滤装置
     */
    private String arinsidevehiclepm25filter;

    /**
     * 负离子发生器
     */
    private String arnig;

    /**
     * 车内香氛装置
     */
    private String aricfd;

    /**
     * 车载冰箱
     */
    private String arvehiclerefrigerator;

    private static final long serialVersionUID = 1L;
}