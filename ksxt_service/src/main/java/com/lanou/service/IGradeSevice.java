package com.lanou.service;

import com.lanou.entity.pojo.TbGrade;

import java.util.List;

public interface IGradeSevice {

    public List<TbGrade> selectStuScore(int id);

}
