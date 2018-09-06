package cn.dabaisk.boot.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class IndexController{
    @RequestMapping("/hello")
    @ResponseBody
    public String hello(){
      return "hello";
    }
    @RequestMapping("/home")
    public String home() throws Exception {

        throw new Exception("Sam 错误");
    }
}
