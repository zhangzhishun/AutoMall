package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * constellation
 * @author 
 */
@Data
public class Constellation implements Serializable {
    /**
     * 星座ID
     */
    private Integer conid;

    /**
     * 星座名称
     */
    private String conname;

    private static final long serialVersionUID = 1L;
}