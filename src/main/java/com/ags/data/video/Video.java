package com.ags.data.video;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Video {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;
    private String title;
    private String url;
    private int category;
    private int language;
    private boolean comedy;
    private boolean action;
    private boolean thriller;
    private boolean horror;
    private boolean drama;
    private boolean romance;
    private boolean fantasy;

    private int rating;
    private int year;

    protected Video() {}

    public Video(Long id, String title, String url) {
        this.id = id;
        this.title = title;
        this.url = url;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }


    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }

    public int getLanguage() {
        return language;
    }

    public void setLanguage(int language) {
        this.language = language;
    }

    public boolean isComedy() {
        return comedy;
    }

    public void setComedy(boolean comedy) {
        this.comedy = comedy;
    }

    public boolean isAction() {
        return action;
    }

    public void setAction(boolean action) {
        this.action = action;
    }

    public boolean isThriller() {
        return thriller;
    }

    public void setThriller(boolean thriller) {
        this.thriller = thriller;
    }

    public boolean isHorror() {
        return horror;
    }

    public void setHorror(boolean horror) {
        this.horror = horror;
    }

    public boolean isDrama() {
        return drama;
    }

    public void setDrama(boolean drama) {
        this.drama = drama;
    }

    public boolean isRomance() {
        return romance;
    }

    public void setRomance(boolean romance) {
        this.romance = romance;
    }

    public boolean isFantasy() {
        return fantasy;
    }

    public void setFantasy(boolean fantasy) {
        this.fantasy = fantasy;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }


    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }


}
