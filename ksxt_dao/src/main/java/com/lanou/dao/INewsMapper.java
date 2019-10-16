package com.lanou.dao;

import com.lanou.entity.dto.NewsDto;
import com.lanou.entity.pojo.TbNews;
import com.lanou.util.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface INewsMapper extends Mapper<TbNews> {

    List<NewsDto> selectAllNews();

}
