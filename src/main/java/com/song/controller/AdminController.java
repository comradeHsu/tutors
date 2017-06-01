package com.song.controller;

import com.song.exception.ServiceException;
import com.song.model.Admin;
import com.song.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
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
    public String teacherMana(){
        return "/admin/teacherMana";
    }
}