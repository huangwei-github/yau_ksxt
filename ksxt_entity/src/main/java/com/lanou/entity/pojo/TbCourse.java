package com.lanou.entity.pojo;

import javax.persistence.*;

@Table(name = "tb_course")
public class TbCourse {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    /**
     * 课程名称
     */
    @Column(name = "course")
    private String course;

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
     * 获取课程名称
     *
     * @return course - 课程名称
     */
    public String getCourse() {
        return course;
    }

    /**
     * 设置课程名称
     *
     * @param course 课程名称
     */
    public void setCourse(String course) {
        this.course = course;
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