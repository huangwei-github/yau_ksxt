package com.lanou.web.controller;

import com.lanou.entity.dto.NewsDto;
import com.lanou.service.IDownNewsService;
import com.lanou.util.Result;
import com.lanou.util.ResultGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class DownNewsController {

    @Autowired
    IDownNewsService service;

    @RequestMapping("/newsinfo")
    @ResponseBody
    public Result newsInfo(NewsDto newsDto){

       NewsDto news = service.selectforNews(newsDto);
       if (news == null){
           return ResultGenerator.genFailResult("暂无数据！");
       }
        return ResultGenerator.genSuccessResult(news);
    }

}
