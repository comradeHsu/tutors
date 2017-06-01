package com.song.service;
import com.song.exception.ServiceException;
import com.song.model.Admin;

import javax.servlet.http.HttpServletRequest;
/**
 * Created by Administrator on 2017/5/13 0013.
 */
public interface AdminService {

    boolean login(HttpServletRequest request, String name, String pwd);
    Admin logins(String userName, String password) throws ServiceException;
    Admin edit(String userName, String password,String newPassword) throws ServiceException;
}