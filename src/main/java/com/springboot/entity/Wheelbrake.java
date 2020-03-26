package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * wheelbrake
 * @author 
 */
@Data
public class Wheelbrake implements Serializable {
    /**
     * 车轮制动ID
     */
    private Integer wbid;

    /**
     * 前制动器类型
     */
    private String wbfrontbraketype;

    /**
     * 后制动器类型
     */
    private String wbrearbraketype;

    /**
     *  驻车制动类型
     */
    private String wbcarbraketype;

    /**
     *  前轮胎规格
     */
    private String wbfronttyre;

    /**
     * 后轮胎规格
     */
    private String wbreartyre;

    /**
     *  备胎规格
     */
    private String wbsparetyre;

    private static final long serialVersionUID = 1L;
}