package com.lanou.entity.pojo;

import javax.persistence.*;

@Table(name = "tb_course_teacher")
public class TbCourseTeacher {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    /**
     * 课程号
     */
    @Column(name = "course")
    private Integer course;

    /**
     * 老师号
     */
    @Column(name = "teacher")
    private Integer teacher;

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
     * 获取课程号
     *
     * @return course - 课程号
     */
    public Integer getCourse() {
        return course;
    }

    /**
     * 设置课程号
     *
     * @param course 课程号
     */
    public void setCourse(Integer course) {
        this.course = course;
    }

    /**
     * 获取老师号
     *
     * @return teacher - 老师号
     */
    public Integer getTeacher() {
        return teacher;
    }

    /**
     * 设置老师号
     *
     * @param teacher 老师号
     */
    public void setTeacher(Integer teacher) {
        this.teacher = teacher;
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