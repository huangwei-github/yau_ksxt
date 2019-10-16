package com.lanou.entity.pojo;

import javax.persistence.*;

@Table(name = "tb_course_info")
public class TbCourseInfo {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    /**
     * 课程性质:必修1/选修2
     */
    @Column(name = "nature")
    private Byte nature;

    /**
     * 学分
     */
    @Column(name = "score")
    private Integer score;

    /**
     * 修读学年:按学期分
     */
    @Column(name = "year")
    private Integer year;

    /**
     * 课程归属:学位1/非学位2
     */
    @Column(name = "attr")
    private Integer attr;

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
     * 获取课程性质:必修1/选修2
     *
     * @return nature - 课程性质:必修1/选修2
     */
    public Byte getNature() {
        return nature;
    }

    /**
     * 设置课程性质:必修1/选修2
     *
     * @param nature 课程性质:必修1/选修2
     */
    public void setNature(Byte nature) {
        this.nature = nature;
    }

    /**
     * 获取学分
     *
     * @return score - 学分
     */
    public Integer getScore() {
        return score;
    }

    /**
     * 设置学分
     *
     * @param score 学分
     */
    public void setScore(Integer score) {
        this.score = score;
    }

    /**
     * 获取修读学年:按学期分
     *
     * @return year - 修读学年:按学期分
     */
    public Integer getYear() {
        return year;
    }

    /**
     * 设置修读学年:按学期分
     *
     * @param year 修读学年:按学期分
     */
    public void setYear(Integer year) {
        this.year = year;
    }

    /**
     * 获取课程归属:学位1/非学位2
     *
     * @return attr - 课程归属:学位1/非学位2
     */
    public Integer getAttr() {
        return attr;
    }

    /**
     * 设置课程归属:学位1/非学位2
     *
     * @param attr 课程归属:学位1/非学位2
     */
    public void setAttr(Integer attr) {
        this.attr = attr;
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