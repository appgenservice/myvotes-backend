package com.ags.data;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;

@Entity
public class PollTopic {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Long id;
    private String title;
    private String question;
    private String description;
    private String opinion1;
    private String opinion2;
    private String opinion3;
    private String opinion4;
    private String opinion5;
    private String opinion6;
    private String opinion7;
    private String opinion8;
    private String opinion9;
    private String opinion10;

    private String opinion11;
    private String pageURL;
    private String imageURL;
    private Long createDate;

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

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getOpinion1() {
        return opinion1;
    }

    public void setOpinion1(String opinion1) {
        this.opinion1 = opinion1;
    }

    public String getOpinion2() {
        return opinion2;
    }

    public void setOpinion2(String opinion2) {
        this.opinion2 = opinion2;
    }

    public String getOpinion3() {
        return opinion3;
    }

    public void setOpinion3(String opinion3) {
        this.opinion3 = opinion3;
    }

    public String getOpinion4() {
        return opinion4;
    }

    public void setOpinion4(String opinion4) {
        this.opinion4 = opinion4;
    }

    public String getOpinion5() {
        return opinion5;
    }

    public void setOpinion5(String opinion5) {
        this.opinion5 = opinion5;
    }

    public Long getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Long createDate) {
        this.createDate = createDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImageURL() {
        return imageURL;
    }

    public void setImageURL(String imageURL) {
        this.imageURL = imageURL;
    }

    public String getPageURL() {
        return pageURL;
    }

    public void setPageURL(String pageURL) {
        this.pageURL = pageURL;
    }


    public String getOpinion6() {
        return opinion6;
    }

    public void setOpinion6(String opinion6) {
        this.opinion6 = opinion6;
    }

    public String getOpinion7() {
        return opinion7;
    }

    public void setOpinion7(String opinion7) {
        this.opinion7 = opinion7;
    }

    public String getOpinion8() {
        return opinion8;
    }

    public void setOpinion8(String opinion8) {
        this.opinion8 = opinion8;
    }

    public String getOpinion9() {
        return opinion9;
    }

    public void setOpinion9(String opinion9) {
        this.opinion9 = opinion9;
    }

    public String getOpinion10() {
        return opinion10;
    }

    public void setOpinion10(String opinion10) {
        this.opinion10 = opinion10;
    }

    public String getOpinion11() {
        return opinion11;
    }

    public void setOpinion11(String opinion11) {
        this.opinion11 = opinion11;
    }



}
