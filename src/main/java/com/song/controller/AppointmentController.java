package com.song.controller;

import com.song.model.Appointment;
import com.song.service.AppointmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
}
