package com.lanou.web.controller;

import com.lanou.entity.pojo.TbNotice;
import com.lanou.service.INoticeService;
import com.lanou.util.PageSplitor;
import com.lanou.util.Result;
import com.lanou.util.ResultGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class NoticeController {

    @Autowired
    private INoticeService noticeService;

    @RequestMapping(value = "/notice", method = RequestMethod.GET)
    public Result getTopNews(PageSplitor splitor) {
        List<TbNotice> noticeList = noticeService.findTopNotice(splitor);
        if (noticeList == null){
            return ResultGenerator.genFailResult("未找到内容");
        }
        return ResultGenerator.genSuccessResult(noticeList);
    }
}
