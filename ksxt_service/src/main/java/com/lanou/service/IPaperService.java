package com.lanou.service;

import java.util.Map;

public interface IPaperService {

    Map<String, Object> genPaper(Map<String, Integer> info, int level);

}
