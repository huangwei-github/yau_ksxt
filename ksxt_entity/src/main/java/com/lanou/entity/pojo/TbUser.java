package com.lanou.entity.pojo;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Table(name = "tb_user")
public class TbUser {
    /**
     * 学生id
     */
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    /**
     * 用户名
     */
    @Column(name = "username")
    @NotNull(message = "用户名不能为空")
    private String username;

    /**
     * 密码
     */
    @Column(name = "password")
    @NotNull(message = "密码不能为空")
    private String password;

    /**
     * 1:启用  2:未启用
     */
    @Column(name = "status")
    private Byte status;

    /**
     * 备注
     */
    @Column(name = "notes")
    private String notes;

    /**
     * 获取学生id
     *
     * @return id - 学生id
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置学生id
     *
     * @param id 学生id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取用户名
     *
     * @return username - 用户名
     */
    public String getUsername() {
        return username;
    }

    /**
     * 设置用户名
     *
     * @param username 用户名
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * 获取密码
     *
     * @return password - 密码
     */
    public String getPassword() {
        return password;
    }

    /**
     * 设置密码
     *
     * @param password 密码
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * 获取1:启用  2:未启用
     *
     * @return status - 1:启用  2:未启用
     */
    public Byte getStatus() {
        return status;
    }

    /**
     * 设置1:启用  2:未启用
     *
     * @param status 1:启用  2:未启用
     */
    public void setStatus(Byte status) {
        this.status = status;
    }

    /**
     * 获取备注
     *
     * @return notes - 备注
     */
    public String getNotes() {
        return notes;
    }

    /**
     * 设置备注
     *
     * @param notes 备注
     */
    public void setNotes(String notes) {
        this.notes = notes;
    }
}