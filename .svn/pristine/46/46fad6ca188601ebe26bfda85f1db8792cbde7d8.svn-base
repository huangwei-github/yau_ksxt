package com.lanou.service;

import com.lanou.entity.pojo.TbStudentInfo;
import com.lanou.entity.pojo.TbUser;
import com.lanou.util.PageSplitor;

import java.util.List;

public interface IStudentInfoService {

    List<TbStudentInfo> findStudentInfoByHelper(PageSplitor splitor);

    int findStudentId(TbStudentInfo studentInfo);

    TbStudentInfo findStudentInfo(TbUser user);

    int findStudentCount();

    int addStudentInfo(TbStudentInfo studentInfo);

    int removeStudentInfo(String ids);

    int modifyStudentInfo(TbStudentInfo studentInfo);

}
