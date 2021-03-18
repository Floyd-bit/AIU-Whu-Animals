package com.evan.aiu.service;

import com.evan.aiu.dao.AreaDAO;
import com.evan.aiu.entity.Area;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AreaService {
    @Autowired
    AreaDAO araDAO;

    //按照id进行排序
    public List<Area> list(){
        Sort sort = new Sort(Sort.Direction.DESC,"id");
        return araDAO.findAll(sort);
    }

    public Area get(int id){
        Area a = araDAO.findById(id).orElse(null);
        return a;
    }




}
