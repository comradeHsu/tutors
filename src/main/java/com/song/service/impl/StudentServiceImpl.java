package com.song.service.impl;

import com.song.dao.StudentRepository;
import com.song.model.Student;
import com.song.service.StudentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2017/5/13.
 */
@Service
public class StudentServiceImpl implements StudentService{
    @Resource
    StudentRepository studentRepository;

    @Override
    public boolean login(HttpServletRequest request, String name, String pwd) {
        boolean rs = false;
        Student student = studentRepository.findByName(name);
        if(student == null || !pwd.equals(student.getPwd()))
            return rs;
        rs = true;
        HttpSession session = request.getSession();
        session.setAttribute("user", student);
        return rs;
    }
}
