package com.entity;

public class Develop {
    private int id;
    private String name;
    private String level;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public Develop(int id, String name, String level) {
        this.id = id;
        this.name = name;
        this.level = level;
    }
}
