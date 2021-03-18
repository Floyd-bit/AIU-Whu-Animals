package com.evan.aiu.service;

import com.evan.aiu.dao.AnimalDAO;
import com.evan.aiu.entity.Animal;
import com.evan.aiu.entity.Area;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AnimalService {
    @Autowired
    AnimalDAO animalDAO;
    @Autowired
    AreaService areaService;

    public List<Animal> list(){
        Sort sort = new Sort(Sort.Direction.DESC,"id");
        return animalDAO.findAll(sort);
    }
    //当id存在时更新数据，当id不存在时插入数据
    public void addOrUpdate(Animal animal){
        animalDAO.save(animal);
    }

    public void deleteById(int id){
        animalDAO.deleteById(id);
    }

    public List<Animal> listByArea(int cid){
        Area area = areaService.get(cid);
        return animalDAO.findAllByArea(area);
    }
    //根据关键词进行模糊查询
    public  List<Animal> search(String keywords){
        return animalDAO.findAllByNameLikeOrBreedLike('%'+keywords + "%", "%"+keywords + "%");
    }

}
