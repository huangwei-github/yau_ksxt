package com.lanou.service;

import com.lanou.entity.pojo.TbAdminInfo;
import com.lanou.util.PageSplitor;

import java.util.List;

public interface IAdminInfoService {

    List<TbAdminInfo> findAdminInfoByHelper(PageSplitor splitor);

    int findAdminId(TbAdminInfo adminInfo);

    int findAdminInfoCount();

    int addAdminInfo(TbAdminInfo adminInfo);

    int removeAdminInfo(String ids);

    int modifyAdminInfo(TbAdminInfo adminInfo);

}
