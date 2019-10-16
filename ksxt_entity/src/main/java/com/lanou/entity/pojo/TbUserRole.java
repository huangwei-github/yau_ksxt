package com.lanou.entity.pojo;

import javax.persistence.*;

@Table(name = "tb_user_role")
public class TbUserRole {
    /**
     * 用户id
     */
    @Id
    @Column(name = "user")
    private Integer user;

    /**
     * 角色id
     */
    @Id
    @Column(name = "role")
    private Integer role;

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
}