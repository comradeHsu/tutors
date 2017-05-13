package com.song.dao;

import com.song.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Administrator on 2017/5/12.
 */
public interface StudentRepository extends JpaRepository<Student,Long> {
    Student findByName(String name);
}
