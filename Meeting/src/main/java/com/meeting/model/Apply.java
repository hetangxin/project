package com.meeting.model;

import java.util.List;
import java.util.Objects;

public class Apply {

    private int meeting_id;
    private int meetingroom_id;
    private String start_time;
    private String end_time;

    private int userId;

    //0为申请中 1为已同意 2为已拒绝
    private String state;

    private List<MeetingRoom> meetingRooms;

    public Apply() {
    }

    public Apply(int meeting_id, int meetingroom_id, String start_time, String end_time, int userId, String state, List<MeetingRoom> meetingRooms) {
        this.meeting_id = meeting_id;
        this.meetingroom_id = meetingroom_id;
        this.start_time = start_time;
        this.end_time = end_time;
        this.userId = userId;
        this.state = state;
        this.meetingRooms = meetingRooms;
    }

    public int getMeeting_id() {
        return meeting_id;
    }

    public void setMeeting_id(int meeting_id) {
        this.meeting_id = meeting_id;
    }

    public int getMeetingroom_id() {
        return meetingroom_id;
    }

    public void setMeetingroom_id(int meetingroom_id) {
        this.meetingroom_id = meetingroom_id;
    }

    public String getStart_time() {
        return start_time;
    }

    public void setStart_time(String start_time) {
        this.start_time = start_time;
    }

    public String getEnd_time() {
        return end_time;
    }

    public void setEnd_time(String end_time) {
        this.end_time = end_time;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public List<MeetingRoom> getMeetingRooms() {
        return meetingRooms;
    }

    public void setMeetingRooms(List<MeetingRoom> meetingRooms) {
        this.meetingRooms = meetingRooms;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Apply apply = (Apply) o;
        return meeting_id == apply.meeting_id &&
                meetingroom_id == apply.meetingroom_id &&
                userId == apply.userId &&
                Objects.equals(start_time, apply.start_time) &&
                Objects.equals(end_time, apply.end_time) &&
                Objects.equals(state, apply.state) &&
                Objects.equals(meetingRooms, apply.meetingRooms);
    }

    @Override
    public int hashCode() {
        return Objects.hash(meeting_id, meetingroom_id, start_time, end_time, userId, state, meetingRooms);
    }

    @Override
    public String toString() {
        return "Apply{" +
                "meeting_id=" + meeting_id +
                ", meetingroom_id=" + meetingroom_id +
                ", start_time='" + start_time + '\'' +
                ", end_time='" + end_time + '\'' +
                ", userId=" + userId +
                ", state='" + state + '\'' +
                ", meetingRooms=" + meetingRooms +
                '}';
    }
}
