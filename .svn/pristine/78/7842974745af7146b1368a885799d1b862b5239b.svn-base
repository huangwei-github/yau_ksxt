package com.lanou.entity.pojo;

import javax.persistence.*;

@Table(name = "tb_course_student")
public class TbCourseStudent {
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
     * 学号
     */
    @Column(name = "student")
    private Integer student;

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
     * 获取学号
     *
     * @return student - 学号
     */
    public Integer getStudent() {
        return student;
    }

    /**
     * 设置学号
     *
     * @param student 学号
     */
    public void setStudent(Integer student) {
        this.student = student;
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