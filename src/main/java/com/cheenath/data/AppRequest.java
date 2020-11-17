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
    private String email;
    private String url;
    private long createDate;

    protected AppRequest() {
    }

    public AppRequest(final String appName, final String email, final long createDate, final String url) {
        this.appName = appName;
        this.email = email;
        this.createDate = createDate;
        this.url = url;
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

    public long getCreateDate() {
        return createDate;
    }

    public void setCreateDate(long createDate) {
        this.createDate = createDate;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }



    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }


}
