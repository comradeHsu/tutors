package com.song.service;

import com.song.exception.ServiceException;
import com.song.model.Student;

/**
 * Created by Administrator on 2017/5/15 0015.
 */
public interface RegisterService {
   Student register(Student user) throws ServiceException;

}
