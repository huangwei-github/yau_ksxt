package com.lanou.entity.pojo;

import javax.persistence.*;

@Table(name = "tb_temp_online")
public class TbTempOnline {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    /**
     * 选择的第一个题
     */
    @Column(name = "online1")
    private Integer online1;

    /**
     * 选择的第二个题
     */
    @Column(name = "online2")
    private Integer online2;

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
     * 获取选择的第一个题
     *
     * @return online1 - 选择的第一个题
     */
    public Integer getOnline1() {
        return online1;
    }

    /**
     * 设置选择的第一个题
     *
     * @param online1 选择的第一个题
     */
    public void setOnline1(Integer online1) {
        this.online1 = online1;
    }

    /**
     * 获取选择的第二个题
     *
     * @return online2 - 选择的第二个题
     */
    public Integer getOnline2() {
        return online2;
    }

    /**
     * 设置选择的第二个题
     *
     * @param online2 选择的第二个题
     */
    public void setOnline2(Integer online2) {
        this.online2 = online2;
    }
}