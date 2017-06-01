package com.song.dao;

import com.song.model.Appointment;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by Administrator on 2017/5/12.
 */
public interface AppointmentRepository extends JpaRepository<Appointment,Long> {
    List<Appointment> findByStuIdAndType(Long stuId, String type);

    List<Appointment> findByTeacherIdAndType(Long teacherId, String type);

    @Modifying(clearAutomatically = true)
    @Query("update Appointment a set a.status = :status where a.id = :id")
    int updateWithQuery(@Param("id") long id, @Param("status") String status);
}
