package com.lanou.entity.pojo;

import javax.persistence.*;

@Table(name = "tb_temp_subjection")
public class TbTempSubjection {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    /**
     * 选择的第一个题
     */
    @Column(name = "subjection1")
    private Integer subjection1;

    /**
     * 选择的第二个题
     */
    @Column(name = "subjection2")
    private Integer subjection2;

    /**
     * 选择的第三个题
     */
    @Column(name = "subjection3")
    private Integer subjection3;

    /**
     * 选择的第四个题
     */
    @Column(name = "subjection4")
    private Integer subjection4;

    @Column(name = "subjection5")
    private Integer subjection5;

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
     * @return subjection1 - 选择的第一个题
     */
    public Integer getSubjection1() {
        return subjection1;
    }

    /**
     * 设置选择的第一个题
     *
     * @param subjection1 选择的第一个题
     */
    public void setSubjection1(Integer subjection1) {
        this.subjection1 = subjection1;
    }

    /**
     * 获取选择的第二个题
     *
     * @return subjection2 - 选择的第二个题
     */
    public Integer getSubjection2() {
        return subjection2;
    }

    /**
     * 设置选择的第二个题
     *
     * @param subjection2 选择的第二个题
     */
    public void setSubjection2(Integer subjection2) {
        this.subjection2 = subjection2;
    }

    /**
     * 获取选择的第三个题
     *
     * @return subjection3 - 选择的第三个题
     */
    public Integer getSubjection3() {
        return subjection3;
    }

    /**
     * 设置选择的第三个题
     *
     * @param subjection3 选择的第三个题
     */
    public void setSubjection3(Integer subjection3) {
        this.subjection3 = subjection3;
    }

    /**
     * 获取选择的第四个题
     *
     * @return subjection4 - 选择的第四个题
     */
    public Integer getSubjection4() {
        return subjection4;
    }

    /**
     * 设置选择的第四个题
     *
     * @param subjection4 选择的第四个题
     */
    public void setSubjection4(Integer subjection4) {
        this.subjection4 = subjection4;
    }

    /**
     * @return subjection5
     */
    public Integer getSubjection5() {
        return subjection5;
    }

    /**
     * @param subjection5
     */
    public void setSubjection5(Integer subjection5) {
        this.subjection5 = subjection5;
    }
}