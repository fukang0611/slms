package com.fukang.slms.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

@Entity
@Table(name = "T_USER")
public class UserModel {

    @Id
    @GeneratedValue(generator = "generator")
    @GenericGenerator(name = "generator", strategy = "uuid")
    @Column(name = "ID")
    private String id;

    @Column(name = "CREATETIME")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createTime;

    @Column(name = "USERNAME")
    private String username;

    @Column(name = "PASSWORD")
    private String password;

    public UserModel() {
    }

    public UserModel(Date createTime, String username, String password) {
        this.createTime = createTime;
        this.username = username;
        this.password = password;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCreateTime() {
        return new SimpleDateFormat("yyyy-MM-dd hh:mm").format(createTime);
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
