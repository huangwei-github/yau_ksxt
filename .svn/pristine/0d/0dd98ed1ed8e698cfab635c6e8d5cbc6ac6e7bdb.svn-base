package com.lanou.service;

import com.lanou.entity.pojo.admin.AdminInfo;
import com.lanou.entity.pojo.shiro.Permission;
import com.lanou.entity.pojo.shiro.Role;
import com.lanou.entity.pojo.shiro.User;
import com.lanou.entity.pojo.student.StudentInfo;
import com.lanou.entity.pojo.teacher.TeacherInfo;

import java.util.List;
import java.util.Set;

public interface IUserService {

    User find4Login(User user);

    //用用户名查找角色
    Set<Role> findRoles(String username);

    //根据用户名查询权限
    Set<Permission> findPermissions(String username);

    User findByUsername(String username);

    StudentInfo findStudentInfo(User uesr);

    TeacherInfo findTeacherInfo(User user);

    AdminInfo findAdminInfo(User user);

    List<Role> findRolesByUser(User user);


}
