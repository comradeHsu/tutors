package com.song.controller;

import com.song.model.Appointment;
import com.song.service.AppointmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/5/23.
 */
@Controller
@RequestMapping("/app")
public class AppointmentController {
    @Autowired
    AppointmentService appointmentService;

    @RequestMapping("/add")
    @ResponseBody
    public String yuyue(Appointment appointment){
        String msg = "";
        try {
            Appointment app = appointmentService.add(appointment);
            msg = "预约成功";
        } catch(Exception e){
            msg = "预约失败";
        }
        return msg;
    }

    @RequestMapping(value = "/agree",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,String> agree(Long id){
        appointmentService.updateStatus(id,"0");
        Map<String,String> map = new HashMap<>();
        map.put("msg","修改成功");
        return map;
    }

    @RequestMapping(value = "/refuse",method = RequestMethod.POST)
    @ResponseBody
    public Map<String,String> refuse(Long id){
        appointmentService.updateStatus(id,"1");
        Map<String,String> map = new HashMap<>();
        map.put("msg","已拒绝");
        return map;
    }
}
