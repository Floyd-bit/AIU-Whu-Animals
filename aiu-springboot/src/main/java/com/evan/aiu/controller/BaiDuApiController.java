package com.evan.aiu.controller;

import com.evan.aiu.ai.ApplyAi;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
public class BaiDuApiController {
    @Autowired
    ApplyAi applyAi;

    @CrossOrigin
    @RequestMapping("/api/baidu/{filepath}")
    public String searchResult(@PathVariable("filepath") String filepath) {
        String path = filepath.replace("*", "/");
        return applyAi.animal(path);
    }
}
