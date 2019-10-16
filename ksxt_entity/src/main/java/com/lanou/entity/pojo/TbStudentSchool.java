package com.lanou.entity.pojo;

import javax.persistence.*;

@Table(name = "tb_student_school")
public class TbStudentSchool {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    /**
     * 学生id
     */
    @Id
    @Column(name = "student")
    private Integer student;

    /**
     * 学院id
     */
    @Column(name = "school")
    private Integer school;

    /**
     * 专业id
     */
    @Column(name = "major")
    private Integer major;

    /**
     * 班级id
     */
    @Column(name = "clazz")
    private Integer clazz;

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
     * 获取学生id
     *
     * @return student - 学生id
     */
    public Integer getStudent() {
        return student;
    }

    /**
     * 设置学生id
     *
     * @param student 学生id
     */
    public void setStudent(Integer student) {
        this.student = student;
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
     * 获取专业id
     *
     * @return major - 专业id
     */
    public Integer getMajor() {
        return major;
    }

    /**
     * 设置专业id
     *
     * @param major 专业id
     */
    public void setMajor(Integer major) {
        this.major = major;
    }

    /**
     * 获取班级id
     *
     * @return clazz - 班级id
     */
    public Integer getClazz() {
        return clazz;
    }

    /**
     * 设置班级id
     *
     * @param clazz 班级id
     */
    public void setClazz(Integer clazz) {
        this.clazz = clazz;
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