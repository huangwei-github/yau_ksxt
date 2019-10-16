package com.lanou.service.impl;

import com.lanou.dao.IStuCourseMapper;
import com.lanou.entity.dto.StudCourseDto;
import com.lanou.service.IStuCourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StuCourseService implements IStuCourseService {

    @Autowired
    IStuCourseMapper mapper;

    public StudCourseDto selectforStuCourse(StudCourseDto courseDto) {
        StudCourseDto course = mapper.selectAllStuCourse(courseDto);
        System.out.println("service"+course);
        return course;
    }
}
