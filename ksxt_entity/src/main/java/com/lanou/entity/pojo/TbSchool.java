package com.lanou.entity.pojo;

import javax.persistence.*;

@Table(name = "tb_school")
public class TbSchool {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    /**
     * 学院名称
     */
    @Column(name = "school")
    private String school;

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
     * 获取学院名称
     *
     * @return school - 学院名称
     */
    public String getSchool() {
        return school;
    }

    /**
     * 设置学院名称
     *
     * @param school 学院名称
     */
    public void setSchool(String school) {
        this.school = school;
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