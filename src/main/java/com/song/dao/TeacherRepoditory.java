package com.song.dao;

import com.song.model.Teacher;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Administrator on 2017/5/12.
 */
public interface TeacherRepoditory extends JpaRepository<Teacher,Long> {
    Teacher findByName(String name);
}
