package com.lanou.service.impl;


import com.lanou.dao.IGradeMapper;
import com.lanou.entity.pojo.TbGrade;
import com.lanou.service.IGradeSevice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Condition;

import java.util.List;

@Service
public class GradeService implements IGradeSevice {


    @Autowired
    IGradeMapper mapper;

    public List<TbGrade> selectStuScore(int id) {

        return mapper.selectStuScore(id);
    }
}
