package com.lanou.service.impl;

import com.lanou.dao.ISelectionFileMapper;
import com.lanou.entity.dto.Selection_FileDto;
import com.lanou.service.ISelectionFileService;
import com.lanou.util.GException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SelectionFileService implements ISelectionFileService {

    @Autowired
    ISelectionFileMapper selectionFileMapper;


    public void insertSelectionFileByDto(Selection_FileDto selectionFileDto) throws GException {
        selectionFileMapper.insertSelectionFile(selectionFileDto);
    }
}
