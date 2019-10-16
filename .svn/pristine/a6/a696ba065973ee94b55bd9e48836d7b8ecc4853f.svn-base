package com.lanou.service.impl;

import com.lanou.dao.IOnlineMapper;
import com.lanou.dao.ISelectionMapper;
import com.lanou.dao.ISubjectionMapper;
import com.lanou.entity.pojo.TbOnline;
import com.lanou.entity.pojo.TbSelection;
import com.lanou.entity.pojo.TbSubjection;
import com.lanou.service.IPaperService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class PaperService implements IPaperService {

    @Autowired
    private ISelectionMapper selectionMapper;

    @Autowired
    private ISubjectionMapper subjectionMapper;

    @Autowired
    private IOnlineMapper onlineMapper;

    /**
     * INFO: 完成组卷功能
     *
     * @param info  组卷题目数量信息 'selection' 'subjection' 'online'
     * @param level 组卷等级信息
     * @return
     */
    public Map<String, Object> genPaper(Map<String, Integer> info, int level) {
        //按题目等级进行分级
        TbSelection selection = new TbSelection();
        selection.setWeight(new Byte(String.valueOf(level)));
        List<TbSelection> selections = selectionMapper.select(selection);

        TbSubjection subjection = new TbSubjection();
        subjection.setWeight(new Byte(String.valueOf(level)));
        List<TbSubjection> subjections = subjectionMapper.select(subjection);

        TbOnline online = new TbOnline();
        online.setWeight(new Byte(String.valueOf(level)));
        List<TbOnline> onlines = onlineMapper.select(online);

        //得出不重复序列
        Set<Integer> selectionIds = rand(selections.size(), info.get("selection"));
        Set<Integer> subjectionIds = rand(subjections.size(), info.get("subjection"));
        Set<Integer> onlineIds = rand(onlines.size(), info.get("online"));

        //取得不重复题目列表
        List<TbSelection> selectionList = new ArrayList<>();
        List<TbSubjection> subjectionList = new ArrayList<>();
        List<TbOnline> onlineList = new ArrayList<>();

        for (Integer item : selectionIds) {
            TbSelection tmp =  selections.get(item);
            selectionList.add(tmp);
        }

        for (Integer item : subjectionIds) {
            TbSubjection tmp = subjections.get(item);
            subjectionList.add(tmp);
        }

        for (Integer item : onlineIds) {
            TbOnline tmp = onlines.get(item);
            onlineList.add(tmp);
        }

        //对最终生成的题目信息进行封装s
        Map<String, Object> map = new HashMap<>();
        map.put("selection", selectionList);
        map.put("subjection", subjectionList);
        map.put("online", onlineList);

        return map;
    }


    /**
     * INFO: 利用Set的无序性生成随机不重复序列
     * @param range 指定序列的范围
     * @param n 指定序列中元素的数量
     * @return
     */
    public  Set<Integer> rand(int range, int n){
        Set<Integer> set = new LinkedHashSet(n);
        Random random = new Random();
        while (set.size() < n) {
            int i = random.nextInt(range);
            set.add(i);
        }
        return set;
    }



}
