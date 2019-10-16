package com.lanou.service.impl;

import com.lanou.dao.*;
import com.lanou.entity.pojo.*;
import com.lanou.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;


@Service
public class UserService implements IUserService {

    @Autowired
    private IUserMapper userMapper;

    @Autowired
    private IRealmMapper realmMapper;

    @Autowired
    private IUserRoleMapper userRoleMapper;

    @Autowired
    private IUserPermissionMapper userPermissionMapper;

    @Autowired
    private IRoleMapper roleMapper;

    /*Realm Start*/
        public Set<TbRole> findRolesByUsername(String username) {
            TbUserRole userRole = new TbUserRole();
            TbUser user = this.findByUsername(username);
            System.out.println("查询得到的UserID ： " + user.getId());
            userRole.setUser(user.getId());
            List<Integer> rolesId = realmMapper.selectUserRoleByUser(user);
            Set<TbRole> roles = new HashSet<TbRole>();
            for (Integer r:rolesId) {
                TbRole temp = new TbRole();
                temp.setId(r);
                TbRole role = roleMapper.selectOne(temp);
                roles.add(role);
            }
            return roles;
        }

        public Set<TbPermission> findPermissionByUsername(String username) {
            TbUserPermission userPermission = new TbUserPermission();
            TbUser user = this.findByUsername(username);
            System.out.println("查询得到的UserID ： " + user.getId());
            userPermission.setUser(user.getId());
            List<Integer> permissions = realmMapper.selectUserPermissionByUser(user);
            Set<TbPermission> rPermission = new HashSet<TbPermission>();
            for (Integer r:permissions) {
                System.out.println("拿到的权限id是 ： " + r);
                TbPermission tp = new TbPermission();
                tp.setId(r);
                rPermission.add(tp);
            }
            return rPermission;
        }

        public TbUser findByUsername(String username) {
            return realmMapper.selectUserByUsername(username);//这个问题
        }
    /*Realm Start*/

    public TbUser find4Login(TbUser user) {
        return userMapper.selectOne(user);
    }

    public TbUser findUser(TbUser user) {
//        mapper.sel
        return null;
    }

    public String findMyInfo(TbUser user) {

        //通过user拿到它的
//        TbRole role = mapper

        return null;
    }

    /**
     * INFO: 更改用户状态
     * @param identifier 标识符
     * @param id -> StudentId, TeacherId, AdminId
     * @param status 用户状态 -> 1(启用) 2(未启用)
     * @return
     */
    public int modifyUserStatus(String identifier, int id, int status) {
        if (identifier.equals("student")) {
            TbUser cuser = userMapper.selectByPrimaryKey(id);
            cuser.setStatus(new Byte(String.valueOf(status)));
            return userMapper.updateByPrimaryKey(cuser);
        } else if (identifier.equals("teacher")) {
            TbUser cuser = userMapper.selectByPrimaryKey(id);
            cuser.setStatus(new Byte(String.valueOf(status)));
            return userMapper.updateByPrimaryKey(cuser);
        } else {
            TbUser cuser = userMapper.selectByPrimaryKey(id);
            cuser.setStatus(new Byte(String.valueOf(status)));
            return userMapper.updateByPrimaryKey(cuser);
        }
    }

    /**
     * INFO: 重置用户密码 -> 000000
     * @param identifier 标识符
     * @param user -> TbStudentInfo, TbTeacherInfo, TbAdminInfo
     * @return
     */
    public int modifyUserPassword(String identifier, Object user) {
        if (identifier.equals("student")) {
            TbStudentInfo studentInfo = (TbStudentInfo) user;
            TbUser cuser = userMapper.selectByPrimaryKey(studentInfo.getStudent());
            cuser.setPassword("000000");
            return userMapper.updateByPrimaryKey(cuser);
        } else if (identifier.equals("teacher")) {
            TbTeacherInfo teacherInfo = (TbTeacherInfo) user;
            TbUser cuser = userMapper.selectByPrimaryKey(teacherInfo.getTeacher());
            cuser.setPassword("000000");
            return userMapper.updateByPrimaryKey(cuser);
        } else {
            TbAdminInfo adminInfo = (TbAdminInfo) user;
            TbUser cuser = userMapper.selectByPrimaryKey(adminInfo.getAdmin());
            cuser.setPassword("000000");
            return userMapper.updateByPrimaryKey(cuser);
        }
    }


}
