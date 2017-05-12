package com.song.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * Created by Administrator on 2017/5/12.
 */
@Entity
public class Teacher {
    @Id
    @GeneratedValue
    private Long id;

}
