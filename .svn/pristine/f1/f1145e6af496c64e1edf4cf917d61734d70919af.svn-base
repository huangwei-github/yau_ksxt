package com.lanou.web.controller;

import com.lanou.entity.dto.NewsDto;
import com.lanou.entity.pojo.TbNews;
import com.lanou.service.INewsService;
import com.lanou.util.PageSplitor;
import com.lanou.util.Result;
import com.lanou.util.ResultGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class NewsController {

    @Autowired
    private INewsService newsService;

    @RequestMapping(value = "/news", method = RequestMethod.GET)
    public Result getTopNews(PageSplitor pageSplitor) {
        List<NewsDto> newsList = newsService.findTopNews(pageSplitor);
        if (newsList == null) {
            return ResultGenerator.genFailResult("未查找到新闻");
        }
        return ResultGenerator.genSuccessResult(newsList);
    }






}
