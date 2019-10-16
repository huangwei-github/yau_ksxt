package com.lanou.dao;

import com.lanou.entity.dto.NewsDto;
import org.springframework.stereotype.Repository;

@Repository
public interface IDownNewsMapper {

    NewsDto selectAllNews(NewsDto newsDto);

}
