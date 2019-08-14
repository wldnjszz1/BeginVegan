package com.bitacademy.wannavegan.diet.vo;

public class DietVO {
    private int id;
    private String author;
    private String content;
    private String created;
    private String image;

    public DietVO() {
        super(); // 내가 추가시킨거
    }

    public DietVO(int id, String author, String content, String created, String image) {
        super(); // 내가 추가시킨거
        this.id = id;
        this.author = author;
        this.content = content;
        this.created = created;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCreated() {
        return created;
    }

    public void setCreated(String created) {
        this.created = created;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "DietVO{" +
                "id=" + id +
                ", author='" + author + '\'' +
                ", content='" + content + '\'' +
                ", created='" + created + '\'' +
                ", image='" + image + '\'' +
                '}';
    }
}
