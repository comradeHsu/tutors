package com.song.controller;

import com.song.exception.ServiceException;
import com.song.model.Student;
import com.song.model.Teacher;
import com.song.service.StudentService;
import com.song.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ClassUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

/**
 * Created by Administrator on 2017/5/15.
 */
@Controller
@RequestMapping("/tea")
public class TeacherController {
    @Autowired
    TeacherService teacherService;

    @Autowired
    StudentService studentService;

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
    public String reg(Teacher da,@RequestParam(value="image",required = false) MultipartFile image) throws IOException {
        if(image != null){
            String path =image.getOriginalFilename();
            String base = ClassUtils.getDefaultClassLoader().getResource("").getPath();
            BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream(new File(base+"/static/upload/"+path)));
            out.write(image.getBytes());
            out.flush();
            out.close();
            da.setPhoto("/upload/"+path);
        }
        StringBuilder msg = new StringBuilder();
        try {
            Teacher teacher = teacherService.register(da);
            msg.append("注册成功");
        } catch (ServiceException e) {
            msg.append(e.getMessage());
        }
        return msg.toString();
    }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(Model model, String name, String pwd, HttpServletRequest request){
        boolean rs = teacherService.login(request,name,pwd);
        Page<Student> stu = studentService.getFive();
        Page<Teacher> list = teacherService.getFive();
        if(rs) {
            model.addAttribute("student", request.getSession().getAttribute("user"));
        }else {
            model.addAttribute("msg", "账号或密码不正确！");
        }
        model.addAttribute("list",list.getContent());
        model.addAttribute("stu",stu.getContent());
        return "/user/index";
    }

    @RequestMapping("/teaDetail")
    public String teacherDetail(Model model,long id){
        Teacher teacher = teacherService.getDetail(id);
        model.addAttribute("teacher",teacher);
        return "/user/teacherDetail";
    }

    @RequestMapping(value = "/edit",method = RequestMethod.POST)
    @ResponseBody
    public String edit(Teacher t, @RequestParam(value="image",required = false) MultipartFile image,HttpServletRequest request) throws IOException {
        if(image != null){
            String path =image.getOriginalFilename();
//            System.out.println(ClassUtils.getDefaultClassLoader().getResource("").getPath());
            String base = ClassUtils.getDefaultClassLoader().getResource("").getPath();
//            System.out.println( request.getServletContext().getRealPath(""));
            BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream(new File(base+"/static/upload/"+image.getOriginalFilename())));
            out.write(image.getBytes());
            out.flush();
            out.close();
            t.setPhoto("/upload/"+image.getOriginalFilename());
        }
        System.out.println(t);
        teacherService.update(t);
        return "修改成功";
    }

    @RequestMapping("/search")
    public String search(Model model,String kecheng){
        List<Teacher> list = teacherService.search(kecheng);
        model.addAttribute("list",list);
        return "/user/teacherSearch";
    }
}
