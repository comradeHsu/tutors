package com.song.dao;

import com.song.model.Teacher;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by Administrator on 2017/5/12.
 */
public interface TeacherRepoditory extends JpaRepository<Teacher,Long> {
    Teacher findByName(String name);

    List<Teacher> findByKechengLike(String kecheng);

    @Modifying(clearAutomatically = true)
    @Query("update teacher set status = '1' where id = :id")
    int setFixedFirstNameFor(@Param("id") long id);

    boolean deleteById(Long id);
}
