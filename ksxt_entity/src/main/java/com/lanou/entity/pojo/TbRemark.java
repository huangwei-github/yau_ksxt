package com.lanou.entity.pojo;

import java.util.Date;
import javax.persistence.*;

@Table(name = "tb_remark")
public class TbRemark {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    /**
     * 评论学生
     */
    @Column(name = "student")
    private Integer student;

    /**
     * 评论时间
     */
    @Column(name = "create")
    private Date create;

    /**
     * 上一条评论id
     */
    @Column(name = "pid")
    private Integer pid;

    /**
     * 评论内容
     */
    @Column(name = "comment")
    private String comment;

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
     * 获取评论学生
     *
     * @return student - 评论学生
     */
    public Integer getStudent() {
        return student;
    }

    /**
     * 设置评论学生
     *
     * @param student 评论学生
     */
    public void setStudent(Integer student) {
        this.student = student;
    }

    /**
     * 获取评论时间
     *
     * @return create - 评论时间
     */
    public Date getCreate() {
        return create;
    }

    /**
     * 设置评论时间
     *
     * @param create 评论时间
     */
    public void setCreate(Date create) {
        this.create = create;
    }

    /**
     * 获取上一条评论id
     *
     * @return pid - 上一条评论id
     */
    public Integer getPid() {
        return pid;
    }

    /**
     * 设置上一条评论id
     *
     * @param pid 上一条评论id
     */
    public void setPid(Integer pid) {
        this.pid = pid;
    }

    /**
     * 获取评论内容
     *
     * @return comment - 评论内容
     */
    public String getComment() {
        return comment;
    }

    /**
     * 设置评论内容
     *
     * @param comment 评论内容
     */
    public void setComment(String comment) {
        this.comment = comment;
    }
}