package com.lanou.web.controller;

import com.lanou.entity.dto.NewsDto;
import com.lanou.entity.pojo.others.News;
import com.lanou.service.INewsService;
import com.lanou.util.GException;
import com.lanou.util.PageSplitor;
import com.lanou.util.Result;
import com.lanou.util.ResultGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
public class NewsController {

    @Autowired
    private INewsService newsService;

    @RequestMapping(value = "/news", method = RequestMethod.GET)
    public Result getNewsList(PageSplitor splitor) {
        List<NewsDto> newsList = null;
        try {
            newsList = newsService.findAll(splitor);
        } catch (GException e) {
            return ResultGenerator.genFailResult("服务器内部错误:" + e.getMessage());
        }
        return ResultGenerator.genSuccessResult(newsList);
    }

    @RequestMapping(value = "/news", method = RequestMethod.DELETE)
    public Result deleteNews(List<Integer> idColletion) {
        if (idColletion == null) {
            return ResultGenerator.genFailResult("请传入要删除的新闻id");
        }
        try {
            newsService.removeNews(idColletion);
        } catch (GException e) {
            return ResultGenerator.genFailResult("服务器内部错误:" + e.getMessage());
        }
        return ResultGenerator.genSuccessResult();
    }

    @RequestMapping(value = "/news", method = RequestMethod.PUT)
    public Result updateNews(Map<String, Object> map) {
        //排除非法参数
        for (String key : map.keySet()) {
            if (!key.matches("^(title|cover|content|status)$")) {
                map.remove(key);
            }
        }
        try {
            newsService.modifyNews(map);
        } catch (GException e) {
            return ResultGenerator.genFailResult("服务器内部错误:" + e.getMessage());
        }
        return ResultGenerator.genSuccessResult();
    }

    @RequestMapping(value = "/news", method = RequestMethod.POST)
    public Result insertNews(News news) {
       if (news.getTitle() == null || news.getCover() == null || news.getContent() == null) {
            return ResultGenerator.genFailResult("请填写必要的新闻信息");
       }
        try {
            newsService.createNews(news);
        } catch (GException e) {
            return ResultGenerator.genFailResult("服务器内部错误:" + e.getMessage());
        }
        return ResultGenerator.genSuccessResult();
    }

}
