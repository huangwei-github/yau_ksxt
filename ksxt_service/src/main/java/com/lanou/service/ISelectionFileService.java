package com.lanou.service;

import com.lanou.entity.dto.Selection_FileDto;
import com.lanou.util.GException;

public interface ISelectionFileService {

    void insertSelectionFileByDto(Selection_FileDto selectionFileDto) throws GException;
}
