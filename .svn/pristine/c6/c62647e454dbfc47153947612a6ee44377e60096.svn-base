package com.lanou.web.controller;


import com.lanou.entity.dto.NewsDto;
import com.lanou.service.IUpnewsService;
import com.lanou.util.Result;
import com.lanou.util.ResultGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UpNewsController {

    @Autowired
    IUpnewsService service;

    @RequestMapping(value = "/uploadnews", method = RequestMethod.POST)
    @ResponseBody
    public Result ueditorUpload(NewsDto news){
        NewsDto newsDto = service.insertforNews(news);
        if (newsDto == null){
            return ResultGenerator.genFailResult("新闻不能为空！");
        }
        return ResultGenerator.genSuccessResult(newsDto);
    }
}
