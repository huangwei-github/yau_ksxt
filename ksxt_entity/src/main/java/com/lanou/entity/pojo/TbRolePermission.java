package com.lanou.entity.pojo;

import javax.persistence.*;

@Table(name = "tb_role_permission")
public class TbRolePermission {
    /**
     * 角色id
     */
    @Id
    @Column(name = "role")
    private Integer role;

    /**
     * 权限id
     */
    @Id
    @Column(name = "permission")
    private Integer permission;

    /**
     * 获取角色id
     *
     * @return role - 角色id
     */
    public Integer getRole() {
        return role;
    }

    /**
     * 设置角色id
     *
     * @param role 角色id
     */
    public void setRole(Integer role) {
        this.role = role;
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