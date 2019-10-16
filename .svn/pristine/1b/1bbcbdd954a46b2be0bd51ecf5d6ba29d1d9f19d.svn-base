package com.lanou.web.controller;

import com.lanou.entity.pojo.TbGrade;
import com.lanou.service.IGradeSevice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class GradeController {

    @Autowired
    IGradeSevice sevice;

    @RequestMapping(value = "/ha",method = RequestMethod.GET)
    @ResponseBody
    public List<TbGrade> selectStuSorce(){
        int id=1;
        System.out.println(sevice.selectStuScore(id));
       return sevice.selectStuScore(id);
    }
}
