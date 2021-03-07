package com.evan.aiu.controller;

import com.evan.aiu.pojo.Animal;
import com.evan.aiu.service.AnimalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class AnimalController {
    @Autowired
    AnimalService animalService;

    @CrossOrigin
    @GetMapping("/api/animal")
    public List<Animal> list() throws Exception {
        return animalService.list();
    }

    @CrossOrigin
    @PostMapping("/api/animal")
    public Animal addOrUpdate(@RequestBody Animal animal) throws Exception {
        animalService.addOrUpdate(animal);
        return animal;
    }

    @CrossOrigin
    @PostMapping("/api/delete")
    public void delete(@RequestBody Animal animal) throws Exception {
        animalService.deleteById(animal.getId());
    }

    @CrossOrigin
    @GetMapping("/api/area/{cid}/animal")
    public List<Animal> listByArea(@PathVariable("cid") int cid) throws Exception {
        if(0 != cid){
            //cid不为0,获取相应地区动物数据
            return animalService.listByArea(cid);
        }else {
            //cid为0,获取全部动物信息
            return list();
        }
    }

    @CrossOrigin
    @GetMapping("/api/search")
    public List<Animal> searchResult(@RequestParam("keywords") String keywords){
        if("".equals(keywords)) {
            return animalService.list();
        }else {
            return animalService.search(keywords);
        }


    }
}
