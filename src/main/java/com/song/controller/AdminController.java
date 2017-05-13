package com.song.controller;

import com.song.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
/**
 * Created by Administrator on 2017/5/13 0013.
 */
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
        return "/user/index";//adminlogin.ftl应该建错了
    }
}