package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * packageselect
 * @author 
 */
@Data
public class Packageselect implements Serializable {
    /**
     * 选装包ID
     */
    private Integer psid;

    /**
     * 选装包名和价格
     */
    private String psnameandprice;

    /**
     * 外观颜色
     */
    private String psappearancecolor;

    /**
     * 内饰颜色
     */
    private String psinteriorcolor;

    private static final long serialVersionUID = 1L;
}