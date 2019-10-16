package com.lanou.dao;

import com.lanou.entity.pojo.admin.AdminInfo;
import com.lanou.entity.pojo.shiro.User;
import com.lanou.entity.pojo.student.StudentInfo;
import com.lanou.entity.pojo.teacher.TeacherInfo;
import org.springframework.stereotype.Repository;

import java.util.Map;

/*
* 提供用户个人信息
* */
@Repository
public interface IUserInfoDao {

    /*---------HW START : 完成mapper---------------*/

    StudentInfo selectStudentInfo(User user);

    TeacherInfo selectTeacherInfo(User user);

    AdminInfo selectAdminInfo(User user);

    void deleteStudentInfo(User user);

    void deleteTeacherInfo(User user);

    void deleteAdminInfo(User user);

    void updateStudentInfo(Map<String, Object> map);

    void updateTeacherInfo(Map<String, Object> map);

    void updateAdminInfo(Map<String, Object> map);

    void insertStudentInfo(StudentInfo studentInfo);

    void insertTeacherInfo(TeacherInfo teacherInfo);

    void insertAdminInfo(AdminInfo adminInfo);

    /*---------HW  END-----------------------------*/

}
