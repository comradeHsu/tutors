package com.song.service.impl;

import com.song.dao.AppointmentRepository;
import com.song.model.Appointment;
import com.song.service.AppointmentService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;

/**
 * Created by Administrator on 2017/5/23.
 */
@Service
public class AppointmentServiceImpl implements AppointmentService {
    @Resource
    AppointmentRepository appointmentRepository;

    @Override
    @Transactional
    public Appointment add(Appointment appointment) {
        appointment.setTime(new Date());
        appointment.setType("0");
        return appointmentRepository.save(appointment);
    }
}
