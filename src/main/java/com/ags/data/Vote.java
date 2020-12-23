package com.ags.data;
import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@IdClass(VoteId.class)
public class Vote {
    @Id
    private Long pollId;
    @Id
    private String email;
    private String custom;
    private int opinion;
    private Long createDate;
    private boolean consent;
    private String location;

    protected Vote() {}

    public Vote(final long pollId, final String email, final int opinion) {
        this.pollId = pollId;
        this.email = email;
        this.opinion = opinion;
    }

    public Long getPollId() {
        return pollId;
    }

    public void setPollId(Long pollId) {
        this.pollId = pollId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getOpinion() {
        return opinion;
    }

    public void setOpinion(int opinion) {
        this.opinion = opinion;
    }


    public Long getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Long createDate) {
        this.createDate = createDate;
    }

    public boolean isConsent() {
        return consent;
    }

    public void setConsent(boolean consent) {
        this.consent = consent;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getCustom() {
        return custom;
    }

    public void setCustom(String custom) {
        this.custom = custom;
    }

}

class VoteId implements  Serializable {
    @Id
    private Long pollId;
    @Id
    private String email;

    public VoteId() {

    }
    public VoteId(Long pollId, String email) {
        this.pollId = pollId;
        this.email = email;
    }
}
