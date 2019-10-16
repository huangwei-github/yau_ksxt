package com.lanou.service.impl;

import com.github.pagehelper.PageHelper;
import com.lanou.dao.ICourseMapper;
import com.lanou.entity.pojo.TbCourse;
import com.lanou.service.ICourseService;
import com.lanou.util.GException;
import com.lanou.util.PageSplitor;
import com.lanou.util.Result;
import com.lanou.util.ResultGenerator;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CourseService implements ICourseService {

    @Autowired
    private SqlSessionFactory sqlSessionFactory;

    @Autowired
    private ICourseMapper courseMapper;


    public Result findAllCourses(PageSplitor splitor) throws GException {
        SqlSession session = sqlSessionFactory.openSession();
        PageHelper.startPage(splitor.getPageNum(), splitor.getPageSize());
        List<TbCourse> courseList = session.selectList("com.lanou.entity.pojo.TbCourse");
        if (courseList == null) {
            return ResultGenerator.genFailResult("未查找到课程信息");
        }
        return ResultGenerator.genSuccessResult(courseList);
    }

    public Result removeCourse(String ids) throws GException {
        if (ids == null && ids == "") {
            return ResultGenerator.genFailResult("请先选择需要删除的课程");
        }
        int num = courseMapper.deleteByIds(ids);
        if(num == 0) {
            return ResultGenerator.genFailResult("删除课程信息失败");
        }
        return ResultGenerator.genSuccessResult();
    }

    public Result addCourse(TbCourse course) throws GException {
        if (course == null) {
            return ResultGenerator.genFailResult("请先完成课程的必要内容");
        }
        int result = courseMapper.insert(course);
        if (result == 0) {
            return ResultGenerator.genFailResult("添加课程信息失败");
        }
        return ResultGenerator.genSuccessResult();
    }

    public Result updateCourse(TbCourse course) throws GException {
        if (course == null) {
            return ResultGenerator.genFailResult("请填写更新必要信息");
        }
        courseMapper.updateByPrimaryKey(course);
        return ResultGenerator.genSuccessResult();
    }
}
