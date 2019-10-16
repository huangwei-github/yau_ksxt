package com.lanou.web.controller;

import com.lanou.entity.pojo.TbCourse;
import com.lanou.service.ICourseService;
import com.lanou.util.GException;
import com.lanou.util.PageSplitor;
import com.lanou.util.Result;
import com.lanou.util.ResultGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CourseController {

    @Autowired
    private ICourseService courseService;

    @RequestMapping(value = "/course", method = RequestMethod.GET)
    @ResponseBody
    public Result getCourses(PageSplitor splitor) {
        try {
            return courseService.findAllCourses(splitor);
        } catch (GException e) {
            return ResultGenerator.genFailResult("Internal Server Error");
        }
    }

    @RequestMapping(value = "/course", method = RequestMethod.POST)
    @ResponseBody
    public Result addCourse(TbCourse course) {
        try {
            return courseService.addCourse(course);
        } catch (GException e) {
            return ResultGenerator.genFailResult("Internal Server Error");
        }
    }

    @RequestMapping(value = "/course", method = RequestMethod.DELETE)
    @ResponseBody
    public Result delCourse(String ids) {
        try {
            return courseService.removeCourse(ids);
        } catch (GException e) {
            return ResultGenerator.genFailResult("Internal Server Error");
        }
    }

    @RequestMapping(value = "/course", method = RequestMethod.PUT)
    @ResponseBody
    public Result modCourse(TbCourse course) {
        try {
            return courseService.updateCourse(course);
        } catch (GException e) {
            return ResultGenerator.genFailResult("Internal Server Error");
        }
    }

}
