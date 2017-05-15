package com.song.service.impl;

import com.song.dao.TeacherRepoditory;
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
}
