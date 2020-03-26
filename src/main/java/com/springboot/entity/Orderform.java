package com.springboot.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import lombok.Data;

/**
 * orderform
 * @author 
 */
@Data
public class Orderform implements Serializable {
    /**
     * 订单ID
     */
    private Integer ofid;

    /**
     * 购买用户ID
     */
    private Integer userid;

    /**
     * 购买的车ID
     */
    private Integer carid;

    /**
     * 购买时间
     */
    private Date oftime;

    /**
     * 订单状态
     */
    private Integer ofstate;

    /**
     * 订单评价
     */
    private String ofcomment;

    /**
     * 订单价格
     */
    private BigDecimal ofprice;

    private static final long serialVersionUID = 1L;
}