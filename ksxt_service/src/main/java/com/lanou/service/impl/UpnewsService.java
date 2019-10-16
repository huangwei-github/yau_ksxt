package com.lanou.service.impl;

import com.lanou.dao.IUpnewsMapper;
import com.lanou.entity.dto.NewsDto;
import com.lanou.service.IUpnewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UpnewsService implements IUpnewsService {

    @Autowired
    IUpnewsMapper mapper;

    public NewsDto insertforNews(NewsDto newsDto) {

        NewsDto news = mapper.insertSingnlNews(newsDto);

        return news;
    }
}
