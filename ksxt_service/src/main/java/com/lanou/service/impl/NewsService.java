package com.lanou.service.impl;

import com.github.pagehelper.PageHelper;
import com.lanou.dao.INewsMapper;
import com.lanou.entity.dto.NewsDto;
import com.lanou.entity.pojo.TbNews;
import com.lanou.service.INewsService;
import com.lanou.util.PageSplitor;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NewsService implements INewsService {

    @Autowired
    private SqlSessionFactory sqlSessionFactory;

    @Autowired
    private INewsMapper newsMapper;


    public List<NewsDto> findTopNews(PageSplitor pageSplitor) {
        SqlSession session = sqlSessionFactory.openSession();
        PageHelper.startPage(pageSplitor.getPageNum(), pageSplitor.getPageSize());
        List<NewsDto> newsList = session.selectList("com.lanou.dao.INewsMapper.selectAllNews");
        for (NewsDto dto : newsList) {
            String title = dto.getTitle().substring(0, 12);
            dto.setTitle(title);
        }
        return newsList;
    }
}
