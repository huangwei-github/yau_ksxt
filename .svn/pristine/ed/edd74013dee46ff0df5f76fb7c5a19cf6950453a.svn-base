package com.lanou.entity.pojo;

import java.util.Date;
import javax.persistence.*;

@Table(name = "tb_notice")
public class TbNotice {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    /**
     * 通知时间
     */
    @Column(name = "time")
    private Date time;

    /**
     * 通知内容
     */
    @Column(name = "notice")
    private String notice;

    /**
     * 通知标题
     */
    @Column(name = "title")
    private String title;

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
     * 获取通知时间
     *
     * @return time - 通知时间
     */
    public Date getTime() {
        return time;
    }

    /**
     * 设置通知时间
     *
     * @param time 通知时间
     */
    public void setTime(Date time) {
        this.time = time;
    }

    /**
     * 获取通知内容
     *
     * @return notice - 通知内容
     */
    public String getNotice() {
        return notice;
    }

    /**
     * 设置通知内容
     *
     * @param notice 通知内容
     */
    public void setNotice(String notice) {
        this.notice = notice;
    }

    /**
     * 获取通知标题
     *
     * @return title - 通知标题
     */
    public String getTitle() {
        return title;
    }

    /**
     * 设置通知标题
     *
     * @param title 通知标题
     */
    public void setTitle(String title) {
        this.title = title;
    }
}