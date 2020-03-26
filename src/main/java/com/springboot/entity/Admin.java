package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * admin
 * @author 
 */
@Data
public class Admin implements Serializable {
    /**
     * 管理员ID
     */
    private Integer adminid;

    /**
     * 管理员名字
     */
    private String adminname;

    /**
     * 管理员密码
     */
    private String adminpassword;

    /**
     * 管理员性别
     */
    private String adminsex;

    /**
     * 管理员联系方式
     */
    private String adminphone;

    /**
     * 管理员等级
     */
    private Integer adminlevel;

    private static final long serialVersionUID = 1L;
}