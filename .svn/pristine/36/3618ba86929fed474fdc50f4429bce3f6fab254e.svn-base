package com.lanou.entity.pojo;

import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedJdbcTypes;
import tk.mybatis.mapper.annotation.ColumnType;
import tk.mybatis.mapper.annotation.Version;

import java.util.Date;
import javax.persistence.*;

@Table(name = "tb_news")
public class TbNews {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    /**
     * 新闻标题
     */
    @Column(name = "title")
    private String title;

    /**
     * 新闻封面
     */
    @Column(name = "cover")
    private String cover;

    /**
     * 创建时间
     */
    @Column(name = "create")
    private Date create;

    /**
     * 作者id
     */
    @Column(name = "author")
    private Integer author;

    /**
     * 优先级
     */
    @Column(name = "rank")
    private Byte rank;

    /**
     * 状态 1(启用) 2(销毁)
     */
    @Column(name = "status")
    private Byte status;

    /**
     * 备注
     */
    @Column(name = "notes")
    private String notes;

    /**
     * 新闻内容
     */
    @Column(name = "content")
    private String content;

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
     * 获取新闻标题
     *
     * @return title - 新闻标题
     */
    public String getTitle() {
        return title;
    }

    /**
     * 设置新闻标题
     *
     * @param title 新闻标题
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * 获取新闻封面
     *
     * @return cover - 新闻封面
     */
    public String getCover() {
        return cover;
    }

    /**
     * 设置新闻封面
     *
     * @param cover 新闻封面
     */
    public void setCover(String cover) {
        this.cover = cover;
    }

    /**
     * 获取创建时间
     *
     * @return create - 创建时间
     */
    public Date getCreate() {
        return create;
    }

    /**
     * 设置创建时间
     *
     * @param create 创建时间
     */
    public void setCreate(Date create) {
        this.create = create;
    }

    /**
     * 获取作者id
     *
     * @return author - 作者id
     */
    public Integer getAuthor() {
        return author;
    }

    /**
     * 设置作者id
     *
     * @param author 作者id
     */
    public void setAuthor(Integer author) {
        this.author = author;
    }

    /**
     * 获取优先级
     *
     * @return rank - 优先级
     */
    public Byte getRank() {
        return rank;
    }

    /**
     * 设置优先级
     *
     * @param rank 优先级
     */
    public void setRank(Byte rank) {
        this.rank = rank;
    }

    /**
     * 获取状态 1(启用) 2(销毁)
     *
     * @return status - 状态 1(启用) 2(销毁)
     */
    public Byte getStatus() {
        return status;
    }

    /**
     * 设置状态 1(启用) 2(销毁)
     *
     * @param status 状态 1(启用) 2(销毁)
     */
    public void setStatus(Byte status) {
        this.status = status;
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
     * 获取新闻内容
     *
     * @return content - 新闻内容
     */
    public String getContent() {
        return content;
    }

    /**
     * 设置新闻内容
     *
     * @param content 新闻内容
     */
    public void setContent(String content) {
        this.content = content;
    }
}