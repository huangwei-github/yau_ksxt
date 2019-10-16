package com.lanou.entity.pojo;

import javax.persistence.*;

@Table(name = "tb_student_exam")
public class TbStudentExam {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    /**
     * 学生信息
     */
    @Column(name = "student")
    private Integer student;

    /**
     * 组卷id（老师生成）
     */
    @Column(name = "examination")
    private Integer examination;

    /**
     * 分数
     */
    @Column(name = "notes")
    private Integer notes;

    /**
     * 选择题答案
     */
    @Column(name = "selection")
    private String selection;

    /**
     * 答案
     */
    @Column(name = "online")
    private String online;

    /**
     * 主观题答案
     */
    @Column(name = "subjection")
    private String subjection;

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
     * 获取学生信息
     *
     * @return student - 学生信息
     */
    public Integer getStudent() {
        return student;
    }

    /**
     * 设置学生信息
     *
     * @param student 学生信息
     */
    public void setStudent(Integer student) {
        this.student = student;
    }

    /**
     * 获取组卷id（老师生成）
     *
     * @return examination - 组卷id（老师生成）
     */
    public Integer getExamination() {
        return examination;
    }

    /**
     * 设置组卷id（老师生成）
     *
     * @param examination 组卷id（老师生成）
     */
    public void setExamination(Integer examination) {
        this.examination = examination;
    }

    /**
     * 获取分数
     *
     * @return notes - 分数
     */
    public Integer getNotes() {
        return notes;
    }

    /**
     * 设置分数
     *
     * @param notes 分数
     */
    public void setNotes(Integer notes) {
        this.notes = notes;
    }

    /**
     * 获取选择题答案
     *
     * @return selection - 选择题答案
     */
    public String getSelection() {
        return selection;
    }

    /**
     * 设置选择题答案
     *
     * @param selection 选择题答案
     */
    public void setSelection(String selection) {
        this.selection = selection;
    }

    /**
     * 获取答案
     *
     * @return online - 答案
     */
    public String getOnline() {
        return online;
    }

    /**
     * 设置答案
     *
     * @param online 答案
     */
    public void setOnline(String online) {
        this.online = online;
    }

    /**
     * 获取主观题答案
     *
     * @return subjection - 主观题答案
     */
    public String getSubjection() {
        return subjection;
    }

    /**
     * 设置主观题答案
     *
     * @param subjection 主观题答案
     */
    public void setSubjection(String subjection) {
        this.subjection = subjection;
    }
}