package com.song.service;

import com.song.exception.ServiceException;
import com.song.model.Student;
import org.springframework.data.domain.Page;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Administrator on 2017/5/13.
 */
public interface StudentService {

    Student login(HttpServletRequest request, String name, String pwd) throws ServiceException;

    List<Student> findAllStudent();

    Page<Student> getFive();

    Student update(Student student);

    Student getDetail(Long id);

    Page<Student> getTen();

    void delete(Long id);

}
