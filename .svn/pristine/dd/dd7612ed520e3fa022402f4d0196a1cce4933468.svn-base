package com.lanou.dao;

import com.lanou.entity.pojo.shiro.*;
import org.springframework.stereotype.Repository;

import java.util.Set;

/**
 * 提供用户角色和用户权限
 */
@Repository
public interface IUserDao {

    /*Realm START*/
        User selectByUsername(String username);

        Set<Role> selectRolesByUsername(String username);

        Set<Permission> selectPermissionsByUsername(String username);
    /*Realm END*/

    /*用户登录验证*/
    User select4Login(User user);

    User selectById(long id);

    /*----------ZZ START : 完成mapper------------*/

    /*删除用户*/
    void deleteUser(User user);

    /*删除用户角色表中的记录*/
    void deleteUserRole(UserRole userRole);

    /*删除用户权限表中的记录*/
    void deleteUserPermission(UserPermission userPermission);

    /*修改用户信息*/
    void updateUser(User user);

    /*修改用户角色*/
    void updateUserRole(UserRole userRole);

    /*修改用户权限*/
    void updateUserPermission(UserPermission userPermission);

    /*增加用户*/
    void addUser(User user);

    /*增加用户角色*/
    void addUserRole(UserRole userRole);

    /*增加用户权限*/
    void addUserPermission(UserPermission userPermission);

    /*--------ZZ END  -------------------------*/

}
