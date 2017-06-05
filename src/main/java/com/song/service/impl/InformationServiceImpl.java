package com.song.service.impl;

import com.song.dao.InfomationRepository;
import com.song.model.Infomation;
import com.song.service.InformationService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Administrator on 2017/6/5.
 */
@Service
public class InformationServiceImpl implements InformationService {
    @Resource
    InfomationRepository infomationRepository;

    @Override
    public Page<Infomation> find() {
        Sort sort = new Sort(Sort.Direction.DESC,"times");
        Pageable pageable = new PageRequest(0,5,sort);
        return infomationRepository.findAll(pageable);
    }

    @Override
    public Infomation findOne(Long id) {
        return infomationRepository.findOne(id);
    }
}
