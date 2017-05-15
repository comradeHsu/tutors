package com.song.controller;

import com.song.exception.ServiceException;
import com.song.model.Student;
import com.song.service.RegisterService;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2017/5/14.
 */
@Controller
@RequestMapping("/reg")
public class RegisterController {
    @Autowired
    RegisterService registerService;

    @RequestMapping(value = "/registerLogin", method = RequestMethod.POST)
    public ModelAndView regTeacher(@ModelAttribute Student user, HttpServletRequest request){
        HttpSession session = request.getSession();
        ModelAndView view = new ModelAndView();
        try {
            Student student = registerService.register(user);
            session.setAttribute("user",user);
            view.setViewName("/user/index");
        } catch (ServiceException e) {
            view.addObject("msg",e.getMessage());
            view.setViewName("/user/index");
        }
        return view;
    }

    @RequestMapping("/regTeacher")
    public String regTeacher(){

        return "/user/regTeacher";
    }

    @RequestMapping("/regStudent")
    public String regStudent(){

        return "/user/regStudent";
    }
}
