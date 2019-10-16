package com.lanou.service;

import com.lanou.entity.dto.NewsDto;
import com.lanou.entity.pojo.others.News;
import com.lanou.util.GException;
import com.lanou.util.PageSplitor;

import java.util.List;
import java.util.Map;

public interface INewsService {

    List<NewsDto> findAll(PageSplitor splitor) throws GException;

    void removeNews(List<Integer> idCollection) throws GException;

    void modifyNews(Map<String, Object> map) throws GException;

    void createNews(News news) throws GException;

}
