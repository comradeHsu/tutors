package com.song.dao;

import com.song.model.Admin;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Administrator on 2017/5/12.
 */
public interface AdminRepository extends JpaRepository<Admin,Long>{
    Admin findByUserName(String userName);
}



