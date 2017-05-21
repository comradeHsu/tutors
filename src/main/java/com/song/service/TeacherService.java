package com.song.service;

import com.song.exception.ServiceException;
import com.song.model.Teacher;
import org.springframework.data.domain.Page;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2017/5/15.
 */
public interface TeacherService {
    List<Teacher> findAllTeacher();

    Teacher register(Teacher user) throws ServiceException;

    Boolean login(HttpServletRequest request, String name, String pwd);

    Page<Teacher> getFive();

    Teacher getDetail(Long id);

    Teacher update(Teacher teacher);
}
