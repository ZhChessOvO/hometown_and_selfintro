package com.entity;

public class Reply {
    private int id;
    private int re;
    private String user;
    private String content;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRe() {
        return re;
    }

    public void setRe(int re) {
        this.re = re;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Reply(int id, int re, String user, String content) {
        this.id = id;
        this.re = re;
        this.user = user;
        this.content = content;
    }
}
