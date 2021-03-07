package com.evan.aiu.dao;

import com.evan.aiu.pojo.Animal;
import com.evan.aiu.pojo.Area;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AnimalDAO extends JpaRepository<Animal,Integer>{
        List<Animal> findAllByArea(Area area);
        List<Animal> findAllByNameLikeOrBreedLike(String name,String breed);
    }

