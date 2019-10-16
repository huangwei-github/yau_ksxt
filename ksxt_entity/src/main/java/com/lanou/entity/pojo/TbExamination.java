package com.lanou.entity.pojo;

import java.util.Date;
import javax.persistence.*;

@Table(name = "tb_examination")
public class TbExamination {
    @Id
    @Column(name = "teacher")
    private Integer teacher;

    /**
     * 组卷时间
     */
    @Column(name = "create")
    private Date create;

    /**
     * 选择题
     */
    @Column(name = "selection")
    private Integer selection;

    /**
     * 机试题
     */
    @Column(name = "online")
    private Integer online;

    /**
     * 主观题
     */
    @Column(name = "subjective")
    private Integer subjective;

    /**
     * @return teacher
     */
    public Integer getTeacher() {
        return teacher;
    }

    /**
     * @param teacher
     */
    public void setTeacher(Integer teacher) {
        this.teacher = teacher;
    }

    /**
     * 获取组卷时间
     *
     * @return create - 组卷时间
     */
    public Date getCreate() {
        return create;
    }

    /**
     * 设置组卷时间
     *
     * @param create 组卷时间
     */
    public void setCreate(Date create) {
        this.create = create;
    }

    /**
     * 获取选择题
     *
     * @return selection - 选择题
     */
    public Integer getSelection() {
        return selection;
    }

    /**
     * 设置选择题
     *
     * @param selection 选择题
     */
    public void setSelection(Integer selection) {
        this.selection = selection;
    }

    /**
     * 获取机试题
     *
     * @return online - 机试题
     */
    public Integer getOnline() {
        return online;
    }

    /**
     * 设置机试题
     *
     * @param online 机试题
     */
    public void setOnline(Integer online) {
        this.online = online;
    }

    /**
     * 获取主观题
     *
     * @return subjective - 主观题
     */
    public Integer getSubjective() {
        return subjective;
    }

    /**
     * 设置主观题
     *
     * @param subjective 主观题
     */
    public void setSubjective(Integer subjective) {
        this.subjective = subjective;
    }
}