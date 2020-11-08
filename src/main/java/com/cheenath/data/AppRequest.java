package com.cheenath.data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.util.Date;

@Entity(name = "appRequest")
public class AppRequest {
    @Id
    @GeneratedValue
    private Integer id;
    private String appName;
    private Date createDate;

    protected AppRequest() {
    }

    public AppRequest(final String appName, final String email) {
        this.appName = appName;
        this.email = email;
        this.createDate = new Date();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAppName() {
        return appName;
    }

    public void setAppName(String appName) {
        this.appName = appName;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    private String email;

}
