package com.song.model;

/**
 * Created by Administrator on 2017/5/12.
 */
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity//这个注解标明这是一个实体类。
public class Admin {
    @Id//表示这个属性是主键
    @GeneratedValue//表示是自增
    private Long id;
    private String userName;
    private String password;

    public Long getId() {
        return id;
    }
    public void setId(Long id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
