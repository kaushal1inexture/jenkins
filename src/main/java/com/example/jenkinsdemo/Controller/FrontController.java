package com.example.jenkinsdemo.Controller;

import org.springframework.stereotype.Controller;
import javax.annotation.PostConstruct;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FrontController {

     @PostConstruct
    public void init(){
        System.out.println("Hello Pradip, This is sixth build");
    }
    
    @GetMapping("/getHome")
    public String homePage(){
        System.out.println("Hello Pradip This is third commit.");
        return "home";
    }

}
