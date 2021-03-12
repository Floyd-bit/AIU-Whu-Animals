package com.evan.aiu.controller;

import com.evan.aiu.pojo.Animal;
import com.evan.aiu.service.AnimalService;
import com.evan.aiu.utils.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
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

    @CrossOrigin
    @PostMapping("api/picture")
    public String coversUpload(MultipartFile file) throws Exception {
        String folder = "D:/项目仓库/Animals in University/img";
        File imageFolder = new File(folder);
        File f = new File(imageFolder, StringUtils.getRandomString(6) + file.getOriginalFilename()
                .substring(file.getOriginalFilename().length() - 4));
        if (!f.getParentFile().exists())
            f.getParentFile().mkdirs();
        try {
            file.transferTo(f);
            String imgURL = "http://localhost:8443/api/file/" + f.getName();
            return imgURL;
        } catch (IOException e) {
            e.printStackTrace();
            return "";
        }
    }

}
