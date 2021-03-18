package com.evan.aiu.dao;


import com.evan.aiu.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;


public interface CategoryDAO extends JpaRepository<Category, Integer> {

}
