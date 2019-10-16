package com.lanou.service.impl;

import com.lanou.dao.IDownNewsMapper;
import com.lanou.entity.dto.NewsDto;
import com.lanou.entity.pojo.TbNews;
import com.lanou.service.IDownNewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DownNewsService implements IDownNewsService {

    @Autowired
    IDownNewsMapper mapper;

    public NewsDto selectforNews(NewsDto news) {

        NewsDto newsDto = mapper.selectAllNews(news);

        return newsDto;
    }
}
