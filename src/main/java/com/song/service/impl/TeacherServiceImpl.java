package com.song.service.impl;

import com.song.dao.TeacherRepoditory;
import com.song.exception.ServiceException;
import com.song.model.Teacher;
import com.song.service.TeacherService;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
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
}
