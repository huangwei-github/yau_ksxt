package com.lanou.service.impl;

import com.github.pagehelper.PageHelper;
import com.lanou.dao.IAdminInfoMapper;
import com.lanou.entity.pojo.TbAdminInfo;
import com.lanou.service.IAdminInfoService;
import com.lanou.util.PageSplitor;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminInfoService implements IAdminInfoService {

    @Autowired
    private SqlSessionFactory sqlSessionFactory;

    @Autowired
    private IAdminInfoMapper adminInfoMapper;

    public List<TbAdminInfo> findAdminInfoByHelper(PageSplitor splitor) {
        SqlSession session = sqlSessionFactory.openSession();
        PageHelper.startPage(splitor.getPageNum(), splitor.getPageSize());
        List<TbAdminInfo> adminInfos = session.selectList("com.lanou.dao.IAdminInfoMapper.selectAll");
        return adminInfos;
    }

    public int findAdminId(TbAdminInfo adminInfo) {
        TbAdminInfo info = adminInfoMapper.selectOne(adminInfo);
        if (info != null) {
            return info.getAdmin(); //返回AdminId
        }
        return 0;
    }

    public int findAdminInfoCount() {
        return adminInfoMapper.selectCount(null);
    }

    public int addAdminInfo(TbAdminInfo adminInfo) {
        if (adminInfo != null) {
            adminInfo.setId(null);  //将id置空，防止id重复,插入失败
            return adminInfoMapper.insert(adminInfo);
        }
        return 0;
    }

    public int removeAdminInfo(String ids) {
        if (ids != null && ids != "") {
            return adminInfoMapper.deleteByIds(ids); //ids --> "1,2,3,4"
        }
        return 0;
    }

    public int modifyAdminInfo(TbAdminInfo adminInfo) {
        if (adminInfo != null) {
            return adminInfoMapper.updateByPrimaryKey(adminInfo);
        }
        return 0;
    }

}
