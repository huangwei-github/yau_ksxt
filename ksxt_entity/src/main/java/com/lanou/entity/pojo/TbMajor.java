package com.lanou.entity.pojo;

import javax.persistence.*;

@Table(name = "tb_major")
public class TbMajor {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    /**
     * 学院id
     */
    @Column(name = "school")
    private Integer school;

    /**
     * 专业名称
     */
    @Column(name = "major")
    private String major;

    /**
     * 备注
     */
    @Column(name = "notes")
    private String notes;

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
     * 获取学院id
     *
     * @return school - 学院id
     */
    public Integer getSchool() {
        return school;
    }

    /**
     * 设置学院id
     *
     * @param school 学院id
     */
    public void setSchool(Integer school) {
        this.school = school;
    }

    /**
     * 获取专业名称
     *
     * @return major - 专业名称
     */
    public String getMajor() {
        return major;
    }

    /**
     * 设置专业名称
     *
     * @param major 专业名称
     */
    public void setMajor(String major) {
        this.major = major;
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