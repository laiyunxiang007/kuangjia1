package com.example.kuangjia.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class test {

    @RequestMapping("/b")
    public String c(HttpServletRequest request) {
        return "/index";
    }
    @RequestMapping("/c")
    public String b(HttpServletRequest request) {
        return "/index";
    }
}
