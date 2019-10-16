package com.lanou.service;

import com.lanou.entity.pojo.TbCourse;
import com.lanou.util.GException;
import com.lanou.util.PageSplitor;
import com.lanou.util.Result;

public interface ICourseService {

    Result findAllCourses(PageSplitor splitor) throws GException;

    Result removeCourse(String ids) throws GException;

    Result addCourse(TbCourse course) throws GException;

    Result updateCourse(TbCourse course) throws GException;

}
