package com.lanou.dao;

import com.lanou.entity.pojo.shiro.User;
import com.lanou.entity.pojo.student.StudentSchool;
import com.lanou.entity.pojo.teacher.TeacherSchool;

/*
* 提供学院、专业、班级等信息
* */
public interface ISchoolDao {

    /*-----------FLP START: 完成mapper---------------*/

    /*根据用户信息查询老师、学生学院信息*/
    TeacherSchool selectTeacherSchool(User user);

    StudentSchool selectStudentSchool(User user);

    /*根据学院信息进行相应删除*/
    void deleteTeacherSchool(TeacherSchool teacherSchool);

    void deleteStudentSchool(StudentSchool studentSchool);

    /*根据学院信息进行相应的更新*/
    void updateTeacherSchool(TeacherSchool teacherSchool);

    void updateStudentSchool(StudentSchool studentSchool);

    /*进行学院信息的添加*/
    void insertTeacherSchool(User user);

    void insertStudentSchool(User user);

    /*--------FLP END--------------------------------*/

}
