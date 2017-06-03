package com.song.controller;

import com.song.exception.ServiceException;
import com.song.model.Appointment;
import com.song.model.Student;
import com.song.model.Teacher;
import com.song.service.AppointmentService;
import com.song.service.StudentService;
import com.song.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Collections;
import java.util.List;
import java.util.Map;

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

    @Autowired
    AppointmentService appointmentService;

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String  login(Model model,String name,String pwd, HttpServletRequest request){
        Student student = null;
        Page<Student> stu = studentService.getFive();
        Page<Teacher> list = teacherService.getFive();
        try {
            student = studentService.login(request,name,pwd);
            //Student student = (Student) request.getSession().getAttribute("user");
            System.out.println(student);
            List<Appointment> app = appointmentService.find(student.getId(),"0");
            app = app.size() == 0 ? Collections.EMPTY_LIST : app;
            model.addAttribute("student", student);
            model.addAttribute("app",app);
        } catch (ServiceException e) {
            model.addAttribute("msg", e.getMessage());
        }
        model.addAttribute("list",list.getContent());
        model.addAttribute("stu",stu.getContent());
        return "/user/index";
    }

    @RequestMapping("/yuYue")
    public String yuYue(Model model,HttpServletRequest request){
        Student student = (Student) request.getSession().getAttribute("user");
        System.out.println(student);
        List<Appointment> app = appointmentService.find(student.getId(),"0");
        model.addAttribute("app",app);
        return "/user/s_yuyue";
    }

    @RequestMapping("/stuInfo")
    public String stuInfo(Model model){
        return "/user/studentInfo";
    }

    @RequestMapping("/allStu")
    public String allStu(Model model){
        List<Student> list = studentService.findAllStudent();
        int x = (int) Math.ceil(list.size()/10.0);
        int end = list.size() > 10 ? 10 : list.size();
        model.addAttribute("list",list.subList(0,end));
        model.addAttribute("page",x);
        return "/user/allStudent";
    }

    @RequestMapping("/edit")
    @ResponseBody
    public String edit(Student student){
        String msg = "";
        try {
            studentService.update(student);
            msg = "修改成功";
        } catch (Exception e) {
            msg = "修改失败";
        }
        return msg;
    }
    @RequestMapping("/stuDetail")
    public ModelAndView detail(Long id){
        ModelAndView view = new ModelAndView();
        Student student = studentService.getDetail(id);
        view.addObject("student",student);
        view.setViewName("/user/studentDetail");
        return view;
    }
    @RequestMapping(value="/page",method =RequestMethod.POST)
    @ResponseBody
    public List<Student> page(int curr){
        List<Student> list = studentService.findAllStudent();
        int end = curr*10 > list.size() ? list.size() : curr*10;
        List<Student> lt = list.subList((curr-1)*10,end);
        return lt;
    }

    @RequestMapping("/yuYueMe")
    public String yuYueMe(Model model,HttpServletRequest request){
        Student student = (Student) request.getSession().getAttribute("user");
        List<Appointment> app = appointmentService.finds(student.getId(),"1");
        model.addAttribute("app",app);
        return "/user/myYuYue_s";
    }

}
