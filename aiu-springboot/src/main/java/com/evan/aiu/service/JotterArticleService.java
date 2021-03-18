package com.evan.aiu.service;

import com.evan.aiu.dao.JotterArticleDAO;
import com.evan.aiu.entity.JotterArticle;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;


@Service
public class JotterArticleService {
    @Autowired
    JotterArticleDAO jotterArticleDAO;

    public Page list(int page, int size) {
        Sort sort = new Sort(Sort.Direction.DESC, "id");
        return jotterArticleDAO.findAll(PageRequest.of(page, size, sort));
    }

    public JotterArticle findById(int id) {
        return jotterArticleDAO.findById(id);
    }

    public void addOrUpdate(JotterArticle article) {
        jotterArticleDAO.save(article);
    }

    public void delete(int id) {
        jotterArticleDAO.deleteById(id);
    }

}
