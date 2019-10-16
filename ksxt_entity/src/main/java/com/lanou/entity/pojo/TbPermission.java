package com.lanou.entity.pojo;

import javax.persistence.*;

@Table(name = "tb_permission")
public class TbPermission {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    /**
     * 权限说明
     */
    @Column(name = "permission")
    private String permission;

    /**
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取权限说明
     *
     * @return permission - 权限说明
     */
    public String getPermission() {
        return permission;
    }

    /**
     * 设置权限说明
     *
     * @param permission 权限说明
     */
    public void setPermission(String permission) {
        this.permission = permission;
    }
}