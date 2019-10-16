package com.lanou.dao;

import com.lanou.entity.pojo.TbUser;
import com.lanou.entity.pojo.TbUserPermission;
import com.lanou.entity.pojo.TbUserRole;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IRealmMapper {

    List<Integer> selectUserRoleByUser(TbUser user);

    List<Integer> selectUserPermissionByUser(TbUser user);

    TbUser  selectUserByUsername(String username);

}
