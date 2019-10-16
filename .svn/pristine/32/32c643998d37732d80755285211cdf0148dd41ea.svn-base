package com.lanou.service.impl;

import com.github.pagehelper.PageHelper;
import com.lanou.dao.ITeacherInfoMapper;
import com.lanou.entity.pojo.TbTeacherInfo;
import com.lanou.service.ITeacherInfoService;
import com.lanou.util.PageSplitor;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TeacherInfoService implements ITeacherInfoService {

    @Autowired
    private SqlSessionFactory sqlSessionFactory;

    @Autowired
    private ITeacherInfoMapper teacherInfoMapper;

    public List<TbTeacherInfo> findTeacherInfoByHelper(PageSplitor splitor) {
        SqlSession session = sqlSessionFactory.openSession();
        PageHelper.startPage(splitor.getPageNum(), splitor.getPageSize());
        List<TbTeacherInfo> studentInfos = session.selectList("com.lanou.dao.ITeacherInfoMapper.selectAll");
        return studentInfos;
    }

    public int findTeacherId(TbTeacherInfo teacherInfo) {
        TbTeacherInfo info = teacherInfoMapper.selectOne(teacherInfo);
        if (info != null) {
            return info.getTeacher(); //返回teacherId
        }
        return 0;
    }

    public int findTeacherInfoCount() {
        return teacherInfoMapper.selectCount(null);
    }

    public int addTeacherInfo(TbTeacherInfo teacherInfo) {
        if (teacherInfo != null) {
            teacherInfo.setId(null);    //置空id,放置id重复，插入失败
            return teacherInfoMapper.insert(teacherInfo);
        }
        return 0;
    }

    public int removeTeacherInfo(String ids) {
        if (ids != null && ids != "") {
            return teacherInfoMapper.deleteByIds(ids); //ids --> "1,2,3,4"
        }
        return 0;
    }

    public int modifyTeacherInfo(TbTeacherInfo teacherInfo) {
        if (teacherInfo != null) {
            return teacherInfoMapper.updateByPrimaryKey(teacherInfo);
        }
        return 0;
    }

    @Override
    public TbTeacherInfo findTeacherInfoById(int teacher) {
        if (teacher != 0) {
            TbTeacherInfo temp = new TbTeacherInfo();
            temp.setTeacher(teacher);
            TbTeacherInfo teacherInfo = teacherInfoMapper.selectOne(temp);
            if (teacherInfo != null) {
                return teacherInfo;
            }
        }
        return null;
    }

}
