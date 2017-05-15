package com.song.controller;

import com.song.model.Teacher;
import com.song.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by Administrator on 2017/5/15.
 */
@Controller
@RequestMapping("/tea")
public class TeacherController {
    @Autowired
    TeacherService teacherService;

    @RequestMapping("/allTea")
    public String allTea(Model model){
        List<Teacher> list = teacherService.findAllTeacher();
        model.addAttribute("list",list);
        return "/user/allTeacher";
    }
}
