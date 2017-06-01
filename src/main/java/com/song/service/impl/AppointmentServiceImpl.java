package com.song.service.impl;

import com.song.dao.AppointmentRepository;
import com.song.model.Appointment;
import com.song.service.AppointmentService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

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
        return appointmentRepository.save(appointment);
    }

    @Override
    public List<Appointment> find(Long stuId, String type) {
        return appointmentRepository.findByStuIdAndType(stuId, type);
    }

    @Override
    public List<Appointment> finds(Long teacherId, String type) {
        return appointmentRepository.findByTeacherIdAndType(teacherId,type);
    }

    @Override
    @Transactional
    public int updateStatus(Long id, String status) {
        return appointmentRepository.updateWithQuery(id ,status);
    }
}
