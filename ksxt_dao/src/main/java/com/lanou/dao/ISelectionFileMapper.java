package com.lanou.dao;

import com.lanou.entity.dto.Selection_FileDto;
import com.lanou.entity.pojo.TbSelectionFile;
import com.lanou.util.Mapper;
import org.springframework.stereotype.Repository;

@Repository
public interface ISelectionFileMapper extends Mapper<TbSelectionFile> {
    void insertSelectionFile(Selection_FileDto selectionFileDto);
}
