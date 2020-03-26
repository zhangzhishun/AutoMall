package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * shops
 * @author 
 */
@Data
public class Shops implements Serializable {
    /**
     * 商铺ID
     */
    private Integer shopsid;

    /**
     * 商铺名字
     */
    private String shopsname;

    /**
     * 商铺地址
     */
    private Integer shopsdis;

    /**
     * 商铺介绍
     */
    private String shopsintro;

    /**
     * 商铺星级
     */
    private Integer shopsstarlevel;

    /**
     * 商铺图片
     */
    private String shopspic;

    /**
     * 商铺头像地址
     */
    private String shopsavatar;

    /**
     * 商铺联系方式
     */
    private String shopsphone;

    /**
     * 商铺拥有者
     */
    private Integer userid;

    private static final long serialVersionUID = 1L;
}