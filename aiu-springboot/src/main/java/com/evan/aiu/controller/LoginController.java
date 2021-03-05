package com.evan.aiu.controller;

import com.evan.aiu.pojo.User;
import com.evan.aiu.result.Result;
import com.evan.aiu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.HtmlUtils;

import javax.servlet.http.HttpSession;
import java.util.Objects;

@Controller
@RestController
public class LoginController {
    @Autowired
    UserService userService;

    @CrossOrigin
    @PostMapping(value = "api/login")
    @ResponseBody
    public Result Login(@RequestBody User requestUser, HttpSession session){
        //对html进行转义，防止xss攻击
        String username = requestUser.getUsername();
        username = HtmlUtils.htmlEscape(username);

        User user = userService.get(username, requestUser.getPassword());
        if(null == user)  {
            return new Result(400);
        }
        else{
            //将用户登录信息记录在session对象中
            session.setAttribute("user",user);
            return new Result(200);
        }
    }
}
