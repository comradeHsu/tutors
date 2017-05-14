package com.song.service.impl;
import com.song.dao.AdminRepository;
import com.song.model.Admin;
import com.song.service.AdminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
/**
 * Created by Administrator on 2017/5/13 0013.
 */
@Service
public class AdminServiceImpl implements AdminService{
    @Resource//依赖注入
    AdminRepository adminRepository;

    @Override//这是
    public boolean login(HttpServletRequest request, String name, String pwd) {
        boolean rs = false;
        Admin admin = adminRepository.findByUserName(name);
        if(admin == null || !pwd.equals(admin.getPassword()))
            return rs;
        rs = true;
        HttpSession session = request.getSession();
        session.setAttribute("user", admin);
        return rs;
    }
}

