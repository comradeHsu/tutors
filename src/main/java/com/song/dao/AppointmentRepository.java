package com.song.dao;

import com.song.model.Appointment;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Administrator on 2017/5/12.
 */
public interface AppointmentRepository extends JpaRepository<Appointment,Long> {
}
