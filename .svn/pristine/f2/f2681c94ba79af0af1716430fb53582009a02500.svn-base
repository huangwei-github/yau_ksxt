package com.lanou.entity.pojo;

import javax.persistence.*;

@Table(name = "tb_subjection")
public class TbSubjection {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    /**
     * 分值
     */
    @Column(name = "score")
    private Integer score;

    /**
     * 权值(难度1,2,3)
     */
    @Column(name = "weight")
    private Byte weight;

    /**
     * 课程号
     */
    @Column(name = "course")
    private Integer course;

    /**
     * 备注
     */
    @Column(name = "notes")
    private String notes;

    /**
     * 题目
     */
    @Column(name = "question")
    private String question;

    /**
     * 参考答案
     */
    @Column(name = "referrence")
    private String referrence;

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
     * 获取分值
     *
     * @return score - 分值
     */
    public Integer getScore() {
        return score;
    }

    /**
     * 设置分值
     *
     * @param score 分值
     */
    public void setScore(Integer score) {
        this.score = score;
    }

    /**
     * 获取权值(难度1,2,3)
     *
     * @return weight - 权值(难度1,2,3)
     */
    public Byte getWeight() {
        return weight;
    }

    /**
     * 设置权值(难度1,2,3)
     *
     * @param weight 权值(难度1,2,3)
     */
    public void setWeight(Byte weight) {
        this.weight = weight;
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

    /**
     * 获取题目
     *
     * @return question - 题目
     */
    public String getQuestion() {
        return question;
    }

    /**
     * 设置题目
     *
     * @param question 题目
     */
    public void setQuestion(String question) {
        this.question = question;
    }

    /**
     * 获取参考答案
     *
     * @return referrence - 参考答案
     */
    public String getReferrence() {
        return referrence;
    }

    /**
     * 设置参考答案
     *
     * @param referrence 参考答案
     */
    public void setReferrence(String referrence) {
        this.referrence = referrence;
    }
}