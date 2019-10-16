package com.lanou.service.impl;

import com.github.pagehelper.PageHelper;
import com.lanou.dao.IStudenInfoMapper;
import com.lanou.entity.pojo.TbStudentInfo;
import com.lanou.entity.pojo.TbUser;
import com.lanou.service.IStudentInfoService;
import com.lanou.util.PageSplitor;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudenInfoService implements IStudentInfoService {

    @Autowired
    IStudenInfoMapper studentInfoMapper;

    @Autowired
    private SqlSessionFactory sqlSessionFactory;

    public List<TbStudentInfo> findStudentInfoByHelper(PageSplitor splitor) {
        SqlSession session = sqlSessionFactory.openSession();
        PageHelper.startPage(splitor.getPageNum(), splitor.getPageSize());
        List<TbStudentInfo> studentInfos = session.selectList("com.lanou.dao.IStudenInfoMapper.selectAll");
        return studentInfos;
    }

    public int findStudentId(TbStudentInfo studentInfo) {
        TbStudentInfo info = studentInfoMapper.selectOne(studentInfo);
        if (info != null) {
            return info.getStudent();     //返回StudentId
        }
        return 0;
    }

    public TbStudentInfo findStudentInfo(TbUser user) {
        TbStudentInfo temp = new TbStudentInfo();
        temp.setStudent(user.getId());
        return studentInfoMapper.selectOne(temp);
    }

    public int findStudentCount() {
        return studentInfoMapper.selectCount(null);
    }

    public int addStudentInfo(TbStudentInfo studentInfo) {
        if (studentInfo != null) {
            studentInfo.setId(null);   //将id置空，防止id重复，插入失败
            return studentInfoMapper.insert(studentInfo);
        }
        return 0;
    }

    public int removeStudentInfo(String ids) {
        if (ids != null && ids != "") {
            return studentInfoMapper.deleteByIds(ids);  //ids --> "1,2,3,4"
        }
        return 0;
    }

    public int modifyStudentInfo(TbStudentInfo studentInfo) {
        if (studentInfo != null) {
            return studentInfoMapper.updateByPrimaryKey(studentInfo);
        }
        return 0;
    }


}
