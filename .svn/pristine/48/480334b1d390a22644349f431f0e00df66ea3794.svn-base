package com.lanou.service.impl;

import com.lanou.dao.IOnlineMapper;
import com.lanou.dao.ISelectionFileMapper;
import com.lanou.dao.ISelectionMapper;
import com.lanou.dao.ISubjectionMapper;
import com.lanou.entity.pojo.TbOnline;
import com.lanou.entity.pojo.TbSelection;
import com.lanou.entity.pojo.TbSelectionFile;
import com.lanou.entity.pojo.TbSubjection;
import com.lanou.service.IQuesionService;
import com.lanou.util.GException;
import com.lanou.util.poi.IPOITools;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.File;
import java.util.List;

@Service
public class QuesionService implements IQuesionService {

    @Autowired
    private ISelectionFileMapper selectionFileMapper;

    @Autowired
    private ISelectionMapper selectionMapper;

    @Autowired
    private ISubjectionMapper subjectionMapper;

    @Autowired
    private IOnlineMapper onlineMapper;

    public void createSelectionFile(TbSelectionFile selectionFile) {
        selectionFileMapper.insert(selectionFile);
    }


    //通过poi解析文件成选择题集合，再将题库内容上传到数据库
    public void createSelection(File file) throws GException {
        System.out.println("来到了创建dao");
        List<TbSelection> selections = IPOITools.uploadSelection(file);
        for (TbSelection selection: selections) {
            System.out.println("准备进入数据库"+selection.getAnswer());
            selectionMapper.insert(selection);
        }

    }

    public void createSubjection(File file) throws GException {
        List<TbSubjection> subjections = IPOITools.uploadSubjection(file);
        for (TbSubjection subjection: subjections) {
            subjectionMapper.insert(subjection);
        }
    }

    public void createOnline(File file) throws GException {
        List<TbOnline> onlines = IPOITools.uploadOnline(file);
        for (TbOnline online: onlines) {
            onlineMapper.insert(online);
        }
    }

}
