package com.evan.aiu.dao;

import com.evan.aiu.pojo.Animal;
import com.evan.aiu.pojo.Area;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AreaDAO extends JpaRepository<Area,Integer> {

}
