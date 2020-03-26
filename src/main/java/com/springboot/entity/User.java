package com.springboot.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * user
 * @author 
 */
@Data
public class User implements Serializable {
    /**
     * 用户ID
     */
    private Integer userid;

    /**
     * 用户头像地址
     */
    private String useravatar;

    /**
     * 用户名
     */
    private String username;

    /**
     * 用户密码
     */
    private String userpassword;

    /**
     * 用户年龄
     */
    private String userage;

    /**
     * 用户性别
     */
    private String usersex;

    /**
     * 用户教育程度ID
     */
    private Integer useredu;

    /**
     * 用户星座ID
     */
    private Integer userconstellation;

    /**
     * 用户地址ID
     */
    private String userdistrict;

    /**
     * 工作性质ID
     */
    private Integer workid;

    private static final long serialVersionUID = 1L;
}