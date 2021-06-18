package com.entity;

public class Food {
    private int id;
    private String name;
    private String info;
    private String img;

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

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Food(int id, String name, String info, String img) {
        this.id = id;
        this.name = name;
        this.info = info;
        this.img = img;
    }

    public Food(int id, String name, String info) {
        this.id = id;
        this.name = name;
        this.info = info;
        this.img="";
    }

    @Override
    public String toString() {
        return "Food{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", info='" + info + '\'' +
                ", img='" + img + '\'' +
                '}';
    }
}
