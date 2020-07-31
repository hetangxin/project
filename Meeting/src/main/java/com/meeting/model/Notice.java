package com.meeting.model;

import java.util.Objects;

public class Notice {

    private int notice_id;
    private int user_id;
    private int meeting_id;
    private String notice;

    //0为未读 1为已读
    private String state;

    public Notice() {
    }

    public Notice(int notice_id, int user_id, int meeting_id, String notice, String state) {
        this.notice_id = notice_id;
        this.user_id = user_id;
        this.meeting_id = meeting_id;
        this.notice = notice;
        this.state = state;
    }

    public int getNotice_id() {
        return notice_id;
    }

    public void setNotice_id(int notice_id) {
        this.notice_id = notice_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getMeeting_id() {
        return meeting_id;
    }

    public void setMeeting_id(int meeting_id) {
        this.meeting_id = meeting_id;
    }

    public String getNotice() {
        return notice;
    }

    public void setNotice(String notice) {
        this.notice = notice;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Notice notice1 = (Notice) o;
        return notice_id == notice1.notice_id &&
                user_id == notice1.user_id &&
                meeting_id == notice1.meeting_id &&
                Objects.equals(notice, notice1.notice) &&
                Objects.equals(state, notice1.state);
    }

    @Override
    public int hashCode() {
        return Objects.hash(notice_id, user_id, meeting_id, notice, state);
    }

    @Override
    public String toString() {
        return "Notice{" +
                "notice_id=" + notice_id +
                ", user_id=" + user_id +
                ", meeting_id=" + meeting_id +
                ", notice='" + notice + '\'' +
                ", state='" + state + '\'' +
                '}';
    }
}
