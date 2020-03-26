package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * educational
 * @author 
 */
@Data
public class Educational implements Serializable {
    /**
     * 教育程度编号
     */
    private Integer eduid;

    /**
     * 教育程度名称
     */
    private String eduname;

    /**
     * 教育程度其他说明
     */
    private String eduother;

    private static final long serialVersionUID = 1L;
}