package com.song.dao;

import com.song.model.Appointment;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * Created by Administrator on 2017/5/12.
 */
public interface AppointmentRepository extends JpaRepository<Appointment,Long> {
    List<Appointment> findByStuIdAndType(Long stuId, String type);

    List<Appointment> findByTeacherIdAndType(Long teacherId, String type);
}
