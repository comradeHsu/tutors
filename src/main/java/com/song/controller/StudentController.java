package com.song.controller;

import com.song.model.Student;
import com.song.model.Teacher;
import com.song.service.StudentService;
import com.song.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2017/5/13.
 */
@Controller
@RequestMapping("/stu")
public class StudentController {
    @Autowired
    StudentService studentService;

    @Autowired
    TeacherService teacherService;

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String  login(Model model,String name,String pwd, HttpServletRequest request){
        boolean rs = studentService.login(request,name,pwd);
        Page<Student> stu = studentService.getFive();
        Page<Teacher> list = teacherService.getFive();
        if(rs) {
            model.addAttribute("student", request.getSession().getAttribute("user"));
        } else {
            model.addAttribute("msg", "账号或密码不正确！");
        }
        model.addAttribute("list",list.getContent());
        model.addAttribute("stu",stu.getContent());
        return "/user/index";
    }

    @RequestMapping("/stuInfo")
    public String stuInfo(Model model){
        return "/user/studentInfo";
    }

    @RequestMapping("/allStu")
    public String allStu(Model model){
        List<Student> list = studentService.findAllStudent();
        model.addAttribute("list",list);
        return "/user/allStudent";
    }
}
