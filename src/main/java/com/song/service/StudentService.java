package com.song.service;

import com.song.model.Student;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2017/5/13.
 */
public interface StudentService {

    boolean login(HttpServletRequest request, String name, String pwd);
    List<Student> findAllSrudent();
}
