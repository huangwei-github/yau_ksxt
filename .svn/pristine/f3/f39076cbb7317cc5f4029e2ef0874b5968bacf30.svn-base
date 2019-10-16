package com.lanou.service;

import com.lanou.entity.pojo.TbPermission;
import com.lanou.entity.pojo.TbRole;
import com.lanou.entity.pojo.TbUser;

import java.util.List;
import java.util.Set;


public interface IUserService {

    /*Realm Start*/
        Set<TbRole> findRolesByUsername(String username);
        Set<TbPermission> findPermissionByUsername(String username);
        TbUser findByUsername(String username);
    /*Realm Start*/


    TbUser find4Login(TbUser user);

    TbUser findUser(TbUser user);

    String findMyInfo(TbUser user);

    int modifyUserStatus(String identifier, int id, int status);

    int modifyUserPassword(String identifier, Object user);

}
