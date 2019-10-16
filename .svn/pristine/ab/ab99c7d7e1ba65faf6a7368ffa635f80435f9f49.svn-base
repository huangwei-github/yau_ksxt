package com.lanou.service.impl;

import com.lanou.dao.IUserDao;
import com.lanou.entity.pojo.admin.AdminInfo;
import com.lanou.entity.pojo.shiro.Permission;
import com.lanou.entity.pojo.shiro.Role;
import com.lanou.entity.pojo.shiro.User;
import com.lanou.entity.pojo.student.StudentInfo;
import com.lanou.entity.pojo.teacher.TeacherInfo;
import com.lanou.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

@Service
public class UserService implements IUserService {

    @Autowired
    private IUserDao userDao;

    public User find4Login(User user) {
        User c_user = userDao.select4Login(user);
        if (c_user != null) {
            return c_user;
        }
        return null;
    }

    public Set<Role> findRoles(String username) {
        //在数据库中使用username查询该用户的所有角色
        return userDao.selectRolesByUsername(username);
    }

    public Set<Permission> findPermissions(String username) {
        return userDao.selectPermissionsByUsername(username);
    }

    public User findByUsername(String username) {
        return userDao.selectByUsername(username);
    }

    public StudentInfo findStudentInfo(User uesr) {
        return null;
    }

    public TeacherInfo findTeacherInfo(User user) {
        return null;
    }

    public AdminInfo findAdminInfo(User user) {
        return null;
    }

    public List<Role> findRolesByUser(User user) {
        return null;
    }


}
