package com.song.service;
import javax.servlet.http.HttpServletRequest;
/**
 * Created by Administrator on 2017/5/13 0013.
 */
public interface AdminService {

    boolean login(HttpServletRequest request, String name, String pwd);
}nn
