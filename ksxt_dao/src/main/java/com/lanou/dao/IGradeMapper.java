package com.lanou.dao;

import com.lanou.entity.pojo.TbGrade;
import com.lanou.util.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IGradeMapper extends Mapper<TbGrade>{

    public List<TbGrade> selectStuScore(int student);

}
