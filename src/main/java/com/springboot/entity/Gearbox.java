package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * gearbox
 * @author 
 */
@Data
public class Gearbox implements Serializable {
    /**
     * 变速箱ID
     */
    private Integer gbid;

    /**
     * 变速杆数目
     */
    private Integer gbnumber;

    /**
     * 变速箱类型
     */
    private String gbstyle;

    /**
     * 简称
     */
    private String gbabbreviation;

    private static final long serialVersionUID = 1L;
}