package com.lanou.service.impl;

import com.github.pagehelper.PageHelper;
import com.lanou.dao.INewsDao;
import com.lanou.dao.IUserDao;
import com.lanou.entity.dto.NewsDto;
import com.lanou.entity.pojo.others.News;
import com.lanou.entity.pojo.shiro.Role;
import com.lanou.entity.pojo.shiro.User;
import com.lanou.service.INewsService;
import com.lanou.util.GException;
import com.lanou.util.PageSplitor;
import com.sun.xml.internal.bind.v2.TODO;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Service
public class NewsService implements INewsService {

    @Autowired
    private SqlSessionFactory sqlSessionFactory;

    @Autowired
    private INewsDao newsDao;

    @Autowired
    private IUserDao userDao;

    public List<NewsDto> findAll(PageSplitor splitor) throws GException {
        SqlSession session = sqlSessionFactory.openSession();
        PageHelper.startPage(splitor.getPageNum(), splitor.getPageSize());
        List<News> news = session.selectList("com.lanou.dao.INewsDao.selectAll");
        List<NewsDto> newsList = null;
        for (News item : news) {
            NewsDto dto = new NewsDto();

            //处理时间戳
            Date date = new Date();
            date = item.getCreate();
            dto.setCreate(date);

            //TODO:处理作者的id==>作者名字
//            User user = userDao.selectById(item.getAuthor());
//            List<Role> roles = userDao.selectRolesByUser(user);
            dto.setAuthor("作者名字");

            dto.setId(item.getId());
            dto.setContent(item.getContent());
            dto.setCover(item.getCover());
            dto.setRank(dto.getRank());
            newsList.add(dto);
       }
        return newsList;
    }

    public void removeNews(List<Integer> idCollection) throws GException {
        newsDao.deleteNews(idCollection);
    }

    public void modifyNews(Map<String, Object> map) throws GException {
        newsDao.updateNews(map);
    }

    public void createNews(News news) throws GException {
        newsDao.insertNews(news);
    }

}
