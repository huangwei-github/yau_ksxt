package com.lanou.web.controller;

import com.lanou.entity.dto.StudCourseDto;
import com.lanou.service.IStuCourseService;
import com.lanou.util.Result;
import com.lanou.util.ResultGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class StuCourseController {

    @Autowired
    IStuCourseService courseService;

    @RequestMapping("/scourse")
    @ResponseBody
    public Result StuCourse(StudCourseDto courseDto){
        StudCourseDto course = courseService.selectforStuCourse(courseDto);
        if (course == null){
            return ResultGenerator.genFailResult("暂无课程信息！");
        }
        return ResultGenerator.genSuccessResult(course);
    }

}
