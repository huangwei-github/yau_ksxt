package com.lanou.service.impl;

import com.github.pagehelper.PageHelper;
import com.lanou.dao.INoticeMapper;
import com.lanou.entity.pojo.TbNotice;
import com.lanou.service.INoticeService;
import com.lanou.util.PageSplitor;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class NoticeService implements INoticeService {

    @Autowired
    private SqlSessionFactory sqlSessionFactory;

    @Autowired
    private INoticeMapper noticeMapper;

    public List<TbNotice> findTopNotice(PageSplitor splitor) {
        SqlSession session = sqlSessionFactory.openSession();
        PageHelper.startPage(splitor.getPageNum(),splitor.getPageSize());
        List<TbNotice> noticeList = session.selectList("com.lanou.dao.INoticeMapper.selectAll");
        return noticeList;
    }
}
