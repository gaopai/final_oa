package com.oa.controller;

import com.oa.entity.Department;
import com.oa.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    @RequestMapping("/hello")
    public String hello() {

        List<Department> all = userService.findAll();

        System.out.println(all);

        return "user/login";
    }


}
