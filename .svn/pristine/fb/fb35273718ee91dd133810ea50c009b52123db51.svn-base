package com.lanou.dao;

import com.lanou.entity.dto.NewsDto;
import com.lanou.entity.pojo.others.News;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface INewsDao {

    List<News> selectAll();

    void deleteNews(List<Integer> idCollection);

    void updateNews(Map<String, Object> map);

    void insertNews(News news);

}
