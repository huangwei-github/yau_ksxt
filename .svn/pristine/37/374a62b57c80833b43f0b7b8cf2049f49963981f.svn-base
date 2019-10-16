package com.lanou.entity.pojo;

import javax.persistence.*;

@Table(name = "tb_teacher_school")
public class TbTeacherSchool {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    /**
     * 老师id
     */
    @Id
    @Column(name = "teacher")
    private Integer teacher;

    /**
     * 学院id
     */
    @Column(name = "school")
    private Integer school;

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
     * 获取老师id
     *
     * @return teacher - 老师id
     */
    public Integer getTeacher() {
        return teacher;
    }

    /**
     * 设置老师id
     *
     * @param teacher 老师id
     */
    public void setTeacher(Integer teacher) {
        this.teacher = teacher;
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