package com.lanou.web.controller;

import com.alibaba.fastjson.JSONObject;
import com.lanou.entity.pojo.TbOnline;
import com.lanou.service.IOnlineService;
import com.lanou.service.IPaperService;
import com.lanou.util.Result;
import com.lanou.util.ResultGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

import static java.awt.Color.magenta;
import static java.awt.SystemColor.info;

@Controller
public class OnlineController {

    @Autowired
    private IOnlineService service;

    @Autowired
    private IPaperService paperService;

    @RequestMapping("/online")
    @ResponseBody
    public TbOnline selectOnline(){
        TbOnline online=service.selectOnline();
        JSONObject object=new JSONObject();

        return service.selectOnline();
    }

    @RequestMapping(value = "/paper", method = RequestMethod.GET)
    @ResponseBody
    public Result paper(int selection, int subjection, int online, int level) {
        Map<String, Integer> info = new HashMap<>();
        info.put("selection", selection);
        info.put("subjection", subjection);
        info.put("online", online);
        Map<String, Object> map = paperService.genPaper(info, level);
        System.out.println("selection"+map.get("selection"));
        System.out.println("subjection"+map.get("subjection"));
        System.out.println("online"+map.get("online"));
        return ResultGenerator.genSuccessResult(map);
    }


}
