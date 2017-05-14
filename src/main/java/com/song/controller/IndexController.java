package com.song.controller;

import com.song.dao.StudentRepository;
import com.song.dao.TeacherRepoditory;
import com.song.model.Student;
import com.song.model.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Administrator on 2017/5/12.
 */
@Controller
public class IndexController {
    @Autowired
    TeacherRepoditory teacherRepoditory;

    @Autowired
    StudentRepository studentRepository;

    @RequestMapping(value = "/index",method = RequestMethod.GET)
    public String index(Model model){
        Page<Teacher> list = teacherRepoditory.findAll(new PageRequest(0,5));
        Page<Student> stu = studentRepository.findAll(new PageRequest(0,5));
        model.addAttribute("list",list.getContent());
        model.addAttribute("stu",stu.getContent());
        return "/user/index";
    }
}
