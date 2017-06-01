package com.song.controller;

import com.song.exception.ServiceException;
import com.song.model.Admin;
import com.song.model.Student;
import com.song.model.Teacher;
import com.song.service.AdminService;
import com.song.service.StudentService;
import com.song.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/5/13 0013.
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    AdminService adminService;//

    @Autowired
    TeacherService teacherService;

    @Autowired
    StudentService studentService;

    @RequestMapping(value = "/adminlogin", method = RequestMethod.POST)
    public String login(Model model, String name, String pwd, HttpServletRequest request) {
        boolean rs = adminService.login(request, name, pwd);
        if (rs)
            model.addAttribute("admin", request.getSession().getAttribute("user"));
        else
            model.addAttribute("msg", "账号或密码不正确！");//不懂
        return "/user/index";//adminlogin.ftl应该建错了ba
    }

    @RequestMapping("/toLogin")
    public String toLogin(){
        return "/admin/login";
    }

    @RequestMapping(value="/login",method = RequestMethod.POST)
    public String login(HttpServletRequest request,String userName,String password,Model model){
        String msg = "";
        try {
            Admin admin = adminService.logins(userName, password);
            request.getSession().setAttribute("admin",admin);
        } catch (ServiceException e) {
            msg = e.getMessage();
            model.addAttribute("msg",msg);
            return "/admin/login";
        }
        return "/admin/index";
    }

    @RequestMapping("/logins")
    public String loginSuccess(){
        return "/admin/loginSuccess";
    }

    @RequestMapping("/index")
    public String index(){
        return "/admin/index";
    }

    @RequestMapping("/top")
    public String top(){
        return "/admin/top";
    }

    @RequestMapping("/menu")
    public String menu(){
        return "/admin/menu";
    }

    @RequestMapping("/sysPro")
    public String sysPro(){
        return "/admin/sysPro";
    }

    @RequestMapping("/userInfo")
    public String userInfo(HttpServletRequest request,Model model){
        Admin admin = (Admin) request.getSession().getAttribute("admin");
        model.addAttribute("admin",admin);
        return "/admin/userInfo";
    }

    @RequestMapping(value = "/edit",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,String> edit(String userName, String password, String newPassword, HttpSession session){
        System.out.println(userName+"  "+password+"  "+newPassword);
        String msg = "";
        try {
            Admin admin = adminService.edit(userName, password, newPassword);
            session.setAttribute("admin",admin);
            msg = "修改成功";
        } catch (ServiceException e) {
            msg = e.getMessage();
        }
        Map<String,String> map = new HashMap<>();
        map.put("msg",msg);
        return map;
    }

    @RequestMapping("/loginOut")
    public String loginOut(HttpServletRequest request){
        request.getSession().invalidate();
        return "/admin/login";
    }

    @RequestMapping("/teacherMana")
    public String teacherMana(Model model){
        Page<Teacher> page = teacherService.getTen();
        model.addAttribute("list",page.getContent());
        return "/admin/teacherMana";
    }

    @RequestMapping(value = "/shenhe",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,String> shenhe(Long id){
        int i = teacherService.updateStatus(id);
        String msg = "修改成功";
        Map<String,String> map = new HashMap<>();
        map.put("msg",msg);
        return map;
    }

    @RequestMapping(value = "/del",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,String> del(Long id){
        boolean bool = teacherService.delete(id);
        String msg = "删除成功";
        Map<String,String> map = new HashMap<>();
        map.put("msg",msg);
        return map;
    }

    @RequestMapping("/studentMana")
    public String studentMana(Model model){
        Page<Student> page = studentService.getTen();
        model.addAttribute("list",page.getContent());
        return "/admin/studentMana";
    }

    @RequestMapping(value = "/delStu",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,String> delStu(Long id){
        studentService.delete(id);
        String msg = "删除成功";
        Map<String,String> map = new HashMap<>();
        map.put("msg",msg);
        return map;
    }
}