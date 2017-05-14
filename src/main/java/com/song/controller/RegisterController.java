package com.song.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2017/5/14.
 */
@Controller
@RequestMapping("/reg")
public class RegisterController {
    @RequestMapping("/regTeacher")
    public String regTeacher(){
        return "/user/regTeacher";
    }

    @RequestMapping("/regStudent")
    public String regStudent(){
        return "/user/regStudent";
    }
}
