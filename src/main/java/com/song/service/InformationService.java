package com.song.service;

import com.song.model.Infomation;
import org.springframework.data.domain.Page;

import java.util.List;

/**
 * Created by Administrator on 2017/6/5.
 */
public interface InformationService {

    Page<Infomation> find();

    Infomation findOne(Long id);
}
