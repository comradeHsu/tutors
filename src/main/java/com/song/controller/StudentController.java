package com.song.controller;

import com.song.model.Student;
import com.song.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Administrator on 2017/5/13.
 */
@Controller
@RequestMapping("/stu")
public class StudentController {
    @Autowired
    StudentService studentService;

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String  login(Model model,String name,String pwd, HttpServletRequest request){
        boolean rs = studentService.login(request,name,pwd);
        if(rs)
            model.addAttribute("student",request.getSession().getAttribute("user"));
        else
            model.addAttribute("msg","账号或密码不正确！");
        return "/user/index";
    }

    @RequestMapping("/stuInfo")
    public String stuInfo(Model model){
        return "/user/studentInfo";
    }

}
