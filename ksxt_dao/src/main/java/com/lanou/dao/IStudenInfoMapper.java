package com.lanou.dao;

import com.lanou.entity.dto.StudentDto;
import com.lanou.entity.pojo.TbStudentInfo;
import com.lanou.util.Mapper;
import org.springframework.stereotype.Repository;

@Repository
public interface IStudenInfoMapper extends Mapper<TbStudentInfo> {

    StudentDto findDtoStudentInfo(TbStudentInfo studentInfo);

}
