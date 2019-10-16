package com.lanou.service.impl;

import com.lanou.dao.IOnlineFileMapper;
import com.lanou.entity.dto.Online_FileDto;
import com.lanou.service.IOnlineFileService;
import com.lanou.util.GException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OnlineFileService implements IOnlineFileService {

    @Autowired
    IOnlineFileMapper onlineFileMapper;

    public void insertOnlineFileByDto(Online_FileDto onlineFileDto) throws GException {
        onlineFileMapper.insertOnlineFile(onlineFileDto);
    }
}
