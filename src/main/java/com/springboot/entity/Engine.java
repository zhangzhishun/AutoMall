package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * engine
 * @author 
 */
@Data
public class Engine implements Serializable {
    /**
     * 发动机ID
     */
    private Integer enid;

    /**
     * 发动机型号
     */
    private String enmodel;

    /**
     * 排量(毫升)
     */
    private String endisplacementml;

    /**
     * 排量(升)
     */
    private String endisplacementl;

    /**
     * 进气形式
     */
    private String enairintake;

    /**
     * 汽缸排列形式
     */
    private String encylinderarrangement;

    /**
     * 气缸个数
     */
    private Integer ennumbercylinders;

    /**
     * 每缸气门数
     */
    private Integer ennumbervalvespercylinder;

    /**
     * 压缩比
     */
    private String enreductionratio;

    /**
     * 配气机构
     */
    private String enadmissiongear;

    /**
     * 缸径
     */
    private String encylinderdiameter;

    /**
     * 行程
     */
    private Double endistancerun;

    /**
     * 最大马力(Ps)
     */
    private String enmaximumhorsepower;

    /**
     * 最大功率(kW)
     */
    private String enmaxpower;

    /**
     * 最大功率转速(rpm)
     */
    private Double enmaximumpowerspeed;

    /**
     * 最大扭矩(N-m)
     */
    private String enacrotorque;

    /**
     * 最大扭矩转速(rpm)
     */
    private Double enmaximumtorquespeed;

    /**
     * 发动机特有技术
     */
    private String enspecifictechnology;

    /**
     * 燃料形式
     */
    private String enfuelforms;

    /**
     * 燃油编号
     */
    private String enfuellabel;

    /**
     * 燃油方式
     */
    private String enfuelmode;

    /**
     * 燃油标号
     */
    private String enfuelstandards;

    /**
     * 供油方式
     */
    private String enoilsupply;

    /**
     * 缸盖材料
     */
    private String encylindercovermaterial;

    /**
     * 缸体材料
     */
    private String encylindermaterials;

    /**
     * 环保标准
     */
    private String enenvironmentalstandards;

    private static final long serialVersionUID = 1L;
}