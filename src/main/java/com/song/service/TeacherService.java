package com.song.service;

import com.song.exception.ServiceException;
import com.song.model.Teacher;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2017/5/15.
 */
public interface TeacherService {
    List<Teacher> findAllTeacher();

    Teacher register(Teacher user) throws ServiceException;

    Boolean login(HttpServletRequest request, String name, String pwd);
}
