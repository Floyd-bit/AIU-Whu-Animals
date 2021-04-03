package com.evan.aiu.dao;


import com.evan.aiu.entity.Area;
import com.evan.aiu.entity.Book;
import com.evan.aiu.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;


public interface BookDAO extends JpaRepository<Book,Integer> {
    List<Book> findAllByCategory(Category area);
    List<Book> findAllByTitleLikeOrAuthorLike(String keyword1, String keyword2);
}
