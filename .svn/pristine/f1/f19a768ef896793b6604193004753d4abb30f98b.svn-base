package com.lanou.service.impl;

import com.lanou.dao.OnlineMapper;
import com.lanou.entity.pojo.TbOnline;
import com.lanou.service.IOnlineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class OnlineService implements IOnlineService {

    @Autowired
    OnlineMapper mapper;
    public TbOnline selectOnline() {
        Map<String,Integer> map=new HashMap<String, Integer>();
        map.put("index",1);
        map.put("size",2);
        return mapper.selectOnline(map);

    }
}
