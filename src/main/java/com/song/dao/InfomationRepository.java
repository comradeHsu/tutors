package com.song.dao;

import com.song.model.Infomation;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Administrator on 2017/5/12.
 */
public interface InfomationRepository extends JpaRepository<Infomation,Long> {
}
