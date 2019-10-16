package com.lanou.entity.pojo;

import java.util.Date;
import javax.persistence.*;

@Table(name = "tb_teacher_info")
public class TbTeacherInfo {
    @Id
    @Column(name = "id")
    @GeneratedValue(generator = "JDBC")
    private Integer id;

    /**
     * 老师id
     */
    @Id
    @Column(name = "teacher")
    private Integer teacher;

    /**
     * 老师姓名

     */
    @Column(name = "name")
    private String name;

    /**
     * 性别: 1(男) 2(女)
     */
    @Column(name = "gender")
    private Byte gender;

    /**
     * 出生日期
     */
    @Column(name = "birth")
    private Date birth;

    /**
     * 家庭住址
     */
    @Column(name = "addr")
    private String addr;

    /**
     * 民族
     */
    @Column(name = "nation")
    private String nation;

    /**
     * 身份证号码
     */
    @Column(name = "identity")
    private String identity;

    /**
     * 电话号码
     */
    @Column(name = "phone")
    private String phone;

    /**
     * 电子邮件
     */
    @Column(name = "email")
    private String email;

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
     * 获取老师id
     *
     * @return teacher - 老师id
     */
    public Integer getTeacher() {
        return teacher;
    }

    /**
     * 设置老师id
     *
     * @param teacher 老师id
     */
    public void setTeacher(Integer teacher) {
        this.teacher = teacher;
    }

    /**
     * 获取老师姓名

     *
     * @return name - 老师姓名

     */
    public String getName() {
        return name;
    }

    /**
     * 设置老师姓名

     *
     * @param name 老师姓名

     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取性别: 1(男) 2(女)
     *
     * @return gender - 性别: 1(男) 2(女)
     */
    public Byte getGender() {
        return gender;
    }

    /**
     * 设置性别: 1(男) 2(女)
     *
     * @param gender 性别: 1(男) 2(女)
     */
    public void setGender(Byte gender) {
        this.gender = gender;
    }

    /**
     * 获取出生日期
     *
     * @return birth - 出生日期
     */
    public Date getBirth() {
        return birth;
    }

    /**
     * 设置出生日期
     *
     * @param birth 出生日期
     */
    public void setBirth(Date birth) {
        this.birth = birth;
    }

    /**
     * 获取家庭住址
     *
     * @return addr - 家庭住址
     */
    public String getAddr() {
        return addr;
    }

    /**
     * 设置家庭住址
     *
     * @param addr 家庭住址
     */
    public void setAddr(String addr) {
        this.addr = addr;
    }

    /**
     * 获取民族
     *
     * @return nation - 民族
     */
    public String getNation() {
        return nation;
    }

    /**
     * 设置民族
     *
     * @param nation 民族
     */
    public void setNation(String nation) {
        this.nation = nation;
    }

    /**
     * 获取身份证号码
     *
     * @return identity - 身份证号码
     */
    public String getIdentity() {
        return identity;
    }

    /**
     * 设置身份证号码
     *
     * @param identity 身份证号码
     */
    public void setIdentity(String identity) {
        this.identity = identity;
    }

    /**
     * 获取电话号码
     *
     * @return phone - 电话号码
     */
    public String getPhone() {
        return phone;
    }

    /**
     * 设置电话号码
     *
     * @param phone 电话号码
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * 获取电子邮件
     *
     * @return email - 电子邮件
     */
    public String getEmail() {
        return email;
    }

    /**
     * 设置电子邮件
     *
     * @param email 电子邮件
     */
    public void setEmail(String email) {
        this.email = email;
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