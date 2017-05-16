package com.song.service.impl;

import com.song.dao.StudentRepository;
import com.song.exception.ServiceException;
import com.song.model.Student;
import com.song.service.RegisterService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * Created by Administrator on 2017/5/15.
 */
@Service
public class RegisterServiceImpl implements RegisterService {
    @Resource
    StudentRepository studentRepository;

    @Override
    @Transactional public Student register(Student user) throws ServiceException {
        String userName = user.getName();
        Student student = studentRepository.findByName(userName);
        if(student != null)
            throw new ServiceException(1,"账号已存在！");
        return studentRepository.save(user);
    }
}
