package com.lanou.web.controller;

import com.lanou.service.IPaperService;
import com.lanou.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.File;
import java.util.HashMap;
import java.util.Map;

/**
 * 主要为用户生成pdf文件
 */
@Controller
public class PDFController {

    @Autowired
    private IPaperService paperService;

    @RequestMapping(value = "/pdf", method = RequestMethod.GET)
    @ResponseBody
    public Result genPdf(int selection, int subjection, int online) {
        Map<String, Integer> info = new HashMap<>();
        info.put("selection", selection);
        info.put("subjection", subjection);
        info.put("online", online);
        Map<String, Object> map = paperService.genPaper(info, 1);
        //生成PDF
        PDFTools.genPaper(map);
        //进入线程等待状态,等待2s
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        //将文件上传至文件服务器
        String filePath = ""; //保存最终文件路径
        try {
            filePath = FileUtils.fastDFSUpload(new File(Constant.FILE_LOCATION + "test.pdf"));
        } catch (GException e) {
            return ResultGenerator.genFailResult("IO异常");
        }
        return ResultGenerator.genSuccessResult(filePath);
    }

}
