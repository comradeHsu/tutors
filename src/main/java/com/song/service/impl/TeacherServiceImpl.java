package com.song.service.impl;

import com.song.dao.TeacherRepoditory;
import com.song.exception.ServiceException;
import com.song.model.Student;
import com.song.model.Teacher;
import com.song.service.TeacherService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Administrator on 2017/5/15.
 */
@Service
public class TeacherServiceImpl implements TeacherService{

    @Resource
    TeacherRepoditory teacherRepoditory;
    @Override
    public List<Teacher> findAllTeacher() {
        List<Teacher> list = teacherRepoditory.findAll();
        return list;
    }

    @Override
    public Teacher register(Teacher user) throws ServiceException {
        String userName = user.getName();
        Teacher t = teacherRepoditory.findByName(userName);
        if(t != null)
            throw new ServiceException(1,"用户名已存在");
        return teacherRepoditory.save(user);
    }

    @Override
    public Boolean login(HttpServletRequest request, String name, String pwd) {
        boolean rs = false;
        Teacher student = teacherRepoditory.findByName(name);
        if(student == null || !pwd.equals(student.getPwd()))
            return rs;
        rs = true;
        HttpSession session = request.getSession();
        session.setAttribute("user", student);
        session.setAttribute("type", "1");
        return rs;
    }

    @Override
    public Page<Teacher> getFive() {
        return teacherRepoditory.findAll(new PageRequest(0,5));
    }

    @Override
    public Teacher getDetail(Long id) {
        return teacherRepoditory.findOne(id);
    }
    @Override
    public Teacher update(Teacher teacher){
        return teacherRepoditory.saveAndFlush(teacher);
    }

    @Override
    public List<Teacher> search(String kecheng) {
        return teacherRepoditory.findByKechengLike(kecheng);
    }

}
