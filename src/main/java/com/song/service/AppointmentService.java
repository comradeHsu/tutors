package com.song.service;

import com.song.model.Appointment;

import java.util.List;

/**
 * Created by Administrator on 2017/5/23.
 */
public interface AppointmentService {
    Appointment add(Appointment appointment);

    List<Appointment> find(Long stuId,String type);

    List<Appointment> finds(Long teacherId,String type);

    int updateStatus(Long id,String status);
}
