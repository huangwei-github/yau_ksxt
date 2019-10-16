package com.lanou.entity.pojo;

import javax.persistence.*;

@Table(name = "tb_user_permission")
public class TbUserPermission {
    /**
     * 用户id
     */
    @Column(name = "user")
    private Integer user;

    /**
     * 权限id
     */
    @Column(name = "permission")
    private Integer permission;

    /**
     * 获取用户id
     *
     * @return user - 用户id
     */
    public Integer getUser() {
        return user;
    }

    /**
     * 设置用户id
     *
     * @param user 用户id
     */
    public void setUser(Integer user) {
        this.user = user;
    }

    /**
     * 获取权限id
     *
     * @return permission - 权限id
     */
    public Integer getPermission() {
        return permission;
    }

    /**
     * 设置权限id
     *
     * @param permission 权限id
     */
    public void setPermission(Integer permission) {
        this.permission = permission;
    }
}