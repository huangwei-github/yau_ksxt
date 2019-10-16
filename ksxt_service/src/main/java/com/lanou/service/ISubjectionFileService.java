package com.lanou.service;

import com.lanou.entity.dto.Subjection_FileDto;
import com.lanou.util.GException;

public interface ISubjectionFileService {
    void insertSubjectionFileByDto(Subjection_FileDto subjectionFileDto) throws GException;
}
