package com.entity;

public class Comment {
    private int id;
    private String user;
    private String content;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public Comment(int id, String user, String content) {
        this.id = id;
        this.user = user;
        this.content = content;
    }
}
