package com.song.controller;

import com.song.model.Infomation;
import com.song.service.InformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2017/6/5.
 */
@Controller
@RequestMapping("/info")
public class InfomationController {
    @Autowired
    InformationService informationService;

    @RequestMapping("/detail")
    public String detail(Long id,Model model){
        Infomation info = informationService.findOne(id);
        model.addAttribute("info",info);
        return "/user/gonggaoDetail";
    }
}
