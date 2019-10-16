package com.lanou.service;

import com.lanou.entity.dto.Online_FileDto;
import com.lanou.util.GException;

public interface IOnlineFileService {
    void insertOnlineFileByDto(Online_FileDto onlineFileDto) throws GException;
}
