package com.bitacademy.wannavegan.board.vo;

public class BoardVO {
    private int id;
    private int author;
    private String user_id;
    private String title;
    private String content;
    private String created;
    private String updated;
    private String image;

    public BoardVO(){

    }

    public BoardVO(int id, int author, String user_id, String title, String content, String created, String updated, String image) {
        this.id = id;
        this.author = author;
        this.user_id = user_id;
        this.title = title;
        this.content = content;
        this.created = created;
        this.updated = updated;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAuthor() {
        return author;
    }

    public void setAuthor(int author) {
        this.author = author;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
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

    public String getUpdated() {
        return updated;
    }

    public void setUpdated(String updated) {
        this.updated = updated;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "BoardVO{" +
                "id=" + id +
                ", author=" + author +
                ", user_id='" + user_id + '\'' +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", created='" + created + '\'' +
                ", updated='" + updated + '\'' +
                ", image='" + image + '\'' +
                '}';
    }
}
