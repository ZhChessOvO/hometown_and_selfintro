package com.entity;

public class Study {
    private int id;
    private String time;
    private String name;
    private int score;
    private float credit;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public float getCredit() {
        return credit;
    }

    public void setCredit(float credit) {
        this.credit = credit;
    }

    public Study(int id, String time, String name, int score, float credit) {
        this.id = id;
        this.time = time;
        this.name = name;
        this.score = score;
        this.credit = credit;
    }
}
