package com.lanou.service.impl;

import com.lanou.dao.ISubjectionFileMapper;
import com.lanou.entity.dto.Subjection_FileDto;
import com.lanou.service.ISubjectionFileService;
import com.lanou.util.GException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SubjectionFileService implements ISubjectionFileService {

    @Autowired
    ISubjectionFileMapper subjectionFileMapper;

    public void insertSubjectionFileByDto(Subjection_FileDto subjectionFileDto) throws GException {
        subjectionFileMapper.insertSubjectionFile(subjectionFileDto);
    }
}
