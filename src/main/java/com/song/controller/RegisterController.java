package com.song.controller;

import com.song.service.RegisterService;
import org.apache.catalina.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2017/5/14.
 */
@Controller
@RequestMapping("/reg")
public class RegisterController {
    RegisterService registerService;

    @RequestMapping(value = "/Registerlogin", method = RequestMethod.POST)
    @RequestMapping("/regStudent")
    public String regTeacher(Model user, String checkcode, HttpServletRequest request){
        boolean re = registerService.register(user,checkcode,request);
        if (re)
           Model.addAttribute("student",request.getSession().getAttribute("user"));
        else
            Model.addAttribute("msg","还没注册，请先注册！");
        return "/user/regStudent";
    }

    @RequestMapping("/regTeacher")
    public String regTeacher(){

        return "/user/regTeacher";
    }
}
