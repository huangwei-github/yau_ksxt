package com.lanou.web.controller.shiro;


import com.lanou.entity.pojo.TbPermission;
import com.lanou.entity.pojo.TbRole;
import com.lanou.entity.pojo.TbUser;
import com.lanou.service.IUserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.Set;

public class UserRealm extends AuthorizingRealm {

    // 用户对应的角色信息与权限信息都保存在数据库中，通过UserService获取数据

    @Autowired
    public IUserService userService;

    /*
    * 这个方法是通过用户名查询到当前用户的角色与权限，然后将这些信息放在simpleAuthorizationInfo中
    *   即：提供用户信息返回权限信息
    * 登陆后来走这里，拿出该用户的权限和角色，放在info中。
    * */
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        String username = (String)principalCollection.getPrimaryPrincipal();
        SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
        // 根据用户名查询当前用户拥有的角色
        Set<TbRole> roles = userService.findRolesByUsername(username);
        Set<String> rolesName = new HashSet<String>();
        for (TbRole role:roles) {
            rolesName.add(role.getName());
        }

        // 根据用户名查询当前用户权限
        Set<TbPermission> permissions = userService.findPermissionByUsername(username);
        Set<String> permissionNames = new HashSet<String>();
        for (TbPermission permission : permissions) {
            permissionNames.add(String.valueOf(permission.getPermission()));
        }

        // 将权限名称提供给info
        simpleAuthorizationInfo.setStringPermissions(permissionNames);
        // 将角色名称提供给info
        simpleAuthorizationInfo.setRoles(rolesName);

        return simpleAuthorizationInfo;
    }


    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        //鉴权
        String username = (String)authenticationToken.getPrincipal();
        TbUser user = null;
        SimpleAuthenticationInfo simpleAuthenticationInfo = null;
        try{
            user = userService.findByUsername(username);
        }catch(Exception e) {
            return null;
        }
        Subject subject = SecurityUtils.getSubject();
        subject.getSession().setAttribute("user",user);
        //第一个参数是传入的用户名（其实是一个principal参数，这个参数以为着用户所有认证信息的几个)，第二个是密码，
        //TODO 此处的对象创建没有盐值加密过程，可以再构造里面看得到
        simpleAuthenticationInfo = new SimpleAuthenticationInfo(user.getUsername(),user.getPassword(),getName());
        return simpleAuthenticationInfo;
    }
}
