package com.lanou.entity.pojo;

import javax.persistence.*;

@Table(name = "tb_teacher_privilege")
public class TbTeacherPrivilege {
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
     * 修改成绩权限 1(启用) 2(未启用)
     */
    @Column(name = "modGrade")
    private Byte modgrade;

    /**
     * 建立课程权限 1(启用) 2(未启用)
     */
    @Column(name = "buildCourse")
    private Byte buildcourse;

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
     * 获取修改成绩权限 1(启用) 2(未启用)
     *
     * @return modGrade - 修改成绩权限 1(启用) 2(未启用)
     */
    public Byte getModgrade() {
        return modgrade;
    }

    /**
     * 设置修改成绩权限 1(启用) 2(未启用)
     *
     * @param modgrade 修改成绩权限 1(启用) 2(未启用)
     */
    public void setModgrade(Byte modgrade) {
        this.modgrade = modgrade;
    }

    /**
     * 获取建立课程权限 1(启用) 2(未启用)
     *
     * @return buildCourse - 建立课程权限 1(启用) 2(未启用)
     */
    public Byte getBuildcourse() {
        return buildcourse;
    }

    /**
     * 设置建立课程权限 1(启用) 2(未启用)
     *
     * @param buildcourse 建立课程权限 1(启用) 2(未启用)
     */
    public void setBuildcourse(Byte buildcourse) {
        this.buildcourse = buildcourse;
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