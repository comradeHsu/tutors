package com.song.model;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by Administrator on 2017/5/12.
 */
@Entity
public class Appointment {
    @Id
    @GeneratedValue
    private Long id;
//    private Long stuId;
//    private Long teacherId;
    private String tel;
    private Date time;
    private String remark;
    private String type;//0代表预约老师，1代表预约学生

    private String status="3";//0同意，1拒绝

    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name="stuId")
    private Student student;

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public Teacher getTeacher() {
        return teacher;
    }

    public void setTeacher(Teacher teacher) {
        this.teacher = teacher;
    }

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "teacherId")
    private Teacher teacher;

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

//    public Long getStuId() {
//        return stuId;
//    }
//
//    public void setStuId(Long stuId) {
//        this.stuId = stuId;
//    }

//    public Long getTeacherId() {
//        return teacherId;
//    }
//
//    public void setTeacherId(Long teacherId) {
//        this.teacherId = teacherId;
//    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

}
