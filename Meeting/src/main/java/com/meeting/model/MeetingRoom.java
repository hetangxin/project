package com.meeting.model;

import java.util.Objects;

public class MeetingRoom {

    private int meetingroom_id;
    private String meetingroom_name;
    private int position_floor;
    private int position_room;
    private int number;
    private String equipment;

    public MeetingRoom() {
    }

    public MeetingRoom(int meetingroom_id, String meetingroom_name, int position_floor, int position_room, int number, String equipment) {
        this.meetingroom_id = meetingroom_id;
        this.meetingroom_name = meetingroom_name;
        this.position_floor = position_floor;
        this.position_room = position_room;
        this.number = number;
        this.equipment = equipment;
    }

    public int getMeetingroom_id() {
        return meetingroom_id;
    }

    public void setMeetingroom_id(int meetingroom_id) {
        this.meetingroom_id = meetingroom_id;
    }

    public String getMeetingroom_name() {
        return meetingroom_name;
    }

    public void setMeetingroom_name(String meetingroom_name) {
        this.meetingroom_name = meetingroom_name;
    }

    public int getPosition_floor() {
        return position_floor;
    }

    public void setPosition_floor(int position_floor) {
        this.position_floor = position_floor;
    }

    public int getPosition_room() {
        return position_room;
    }

    public void setPosition_room(int position_room) {
        this.position_room = position_room;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getEquipment() {
        return equipment;
    }

    public void setEquipment(String equipment) {
        this.equipment = equipment;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        MeetingRoom that = (MeetingRoom) o;
        return meetingroom_id == that.meetingroom_id &&
                position_floor == that.position_floor &&
                position_room == that.position_room &&
                number == that.number &&
                Objects.equals(meetingroom_name, that.meetingroom_name) &&
                Objects.equals(equipment, that.equipment);
    }

    @Override
    public int hashCode() {
        return Objects.hash(meetingroom_id, meetingroom_name, position_floor, position_room, number, equipment);
    }

    @Override
    public String toString() {
        return "MeetingRoom{" +
                "meetingroom_id=" + meetingroom_id +
                ", meetingroom_name='" + meetingroom_name + '\'' +
                ", position_floor=" + position_floor +
                ", position_room=" + position_room +
                ", number=" + number +
                ", equipment='" + equipment + '\'' +
                '}';
    }
}
