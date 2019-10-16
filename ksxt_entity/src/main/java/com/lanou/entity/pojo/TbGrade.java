package com.lanou.entity.pojo;

import javax.persistence.*;

@Table(name = "tb_grade")
public class TbGrade {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    /**
     * 学生id
     */
    @Column(name = "student")
    private Integer student;

    /**
     * 课程id
     */
    @Column(name = "course")
    private Integer course;

    /**
     * 学生成绩
     */
    @Column(name = "grade")
    private Integer grade;

    /**
     * 补考成绩
     */
    @Column(name = "grade1")
    private Integer grade1;

    /**
     * 重修成绩
     */
    @Column(name = "grade2")
    private Integer grade2;

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
     * 获取课程id
     *
     * @return course - 课程id
     */
    public Integer getCourse() {
        return course;
    }

    /**
     * 设置课程id
     *
     * @param course 课程id
     */
    public void setCourse(Integer course) {
        this.course = course;
    }

    /**
     * 获取学生成绩
     *
     * @return grade - 学生成绩
     */
    public Integer getGrade() {
        return grade;
    }

    /**
     * 设置学生成绩
     *
     * @param grade 学生成绩
     */
    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    /**
     * 获取补考成绩
     *
     * @return grade1 - 补考成绩
     */
    public Integer getGrade1() {
        return grade1;
    }

    /**
     * 设置补考成绩
     *
     * @param grade1 补考成绩
     */
    public void setGrade1(Integer grade1) {
        this.grade1 = grade1;
    }

    /**
     * 获取重修成绩
     *
     * @return grade2 - 重修成绩
     */
    public Integer getGrade2() {
        return grade2;
    }

    /**
     * 设置重修成绩
     *
     * @param grade2 重修成绩
     */
    public void setGrade2(Integer grade2) {
        this.grade2 = grade2;
    }

    /**
     * @return notes
     */
    public String getNotes() {
        return notes;
    }

    /**
     * @param notes
     */
    public void setNotes(String notes) {
        this.notes = notes;
    }
}