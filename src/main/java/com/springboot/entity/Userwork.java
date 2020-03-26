package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * userwork
 * @author 
 */
@Data
public class Userwork implements Serializable {
    /**
     * 工作性质ID
     */
    private Integer workid;

    /**
     * 工作名
     */
    private String workname;

    /**
     * 工作地点
     */
    private String workdistrict;

    private static final long serialVersionUID = 1L;
}