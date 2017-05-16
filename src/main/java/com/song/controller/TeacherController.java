package com.song.controller;

import com.song.exception.ServiceException;
import com.song.model.Teacher;
import com.song.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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

    @RequestMapping("/teaInfo")
    public String teacherInfo(Model model){
        return "/user/teacherInfo";
    }

    @RequestMapping(value = "/reg",method = RequestMethod.POST)
    @ResponseBody
    public String reg(@ModelAttribute Teacher user){
        StringBuilder msg = new StringBuilder();
        try {
            Teacher teacher = teacherService.register(user);
            msg.append("注册成功！");
        } catch (ServiceException e) {
            msg.append(e.getMessage());
        }
        return msg.toString();
    }
}
