package com.song.service.impl;

import com.song.dao.StudentRepository;
import com.song.exception.ServiceException;
import com.song.model.Student;
import com.song.service.StudentService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Administrator on 2017/5/13.
 */
@Service
public class StudentServiceImpl implements StudentService{

    @Resource
    StudentRepository studentRepository;

    @Override
    public Student login(HttpServletRequest request, String name, String pwd) throws ServiceException {
        Student student = studentRepository.findByName(name);
        if(student == null || !pwd.equals(student.getPwd()))
            throw new ServiceException(1,"账号或密码不对");
        HttpSession session = request.getSession();
        session.setAttribute("user", student);
        session.setAttribute("type", "2");
        return student;
    }

    @Override
    public List<Student> findAllStudent() {
        return studentRepository.findAll(new Sort(Sort.Direction.ASC,"createDate"));
    }

    @Override
    public Page<Student> getFive() {
        return studentRepository.findAll(new PageRequest(0,5));
    }

    @Override
    @Transactional
    public Student update(Student student) {
        return studentRepository.saveAndFlush(student);
    }

    @Override
    public Student getDetail(Long id) {
        return studentRepository.findOne(id);
    }

    @Override
    public Page<Student> getTen() {
        return studentRepository.findAll(new PageRequest(0,10));
    }

    @Override
    @Transactional
    public void delete(Long id) {
        studentRepository.delete(id);
    }
}
