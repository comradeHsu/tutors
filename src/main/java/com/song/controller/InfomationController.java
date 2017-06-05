package com.song.controller;

import com.song.model.Infomation;
import com.song.service.InformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
        Page<Infomation> inf = informationService.find();
        model.addAttribute("gg",inf.getContent());
        return "/user/gonggaoDetail";
    }

    @RequestMapping("/mana")
    public String mana(Model model){
        List<Infomation> list = informationService.findAll();
        model.addAttribute("list",list);
        return "/admin/infoMana";
    }

    @RequestMapping("/delete")
    public String delete(Long id){
        Map<String,String> map = new HashMap<>();
        informationService.delete(id);
        map.put("msg","删除成功");
        return "/admin/infoMana";
    }

    @RequestMapping("/add")
    public String add(){
        return "/admin/infoAddl";
    }

    @RequestMapping(value = "/addInfo",method = RequestMethod.POST)
    public String addInfo(Model model,Infomation infomation){
        infomation.setTimes(new Date());
        informationService.save(infomation);
        return "redirect:/info/mana";
    }
}
