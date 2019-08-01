package com.bitacademy.wannavegan.askVO;

public class AskVO {
    private int id;
    private int author;
    private String userId;
    private String title;
    private String content;
    private String created;
    private String isPublic;
    private int grono;
    private int grpord;
    private int depth;

    public AskVO() {
    }

    public AskVO(int id, int author, String userId, String title, String content, String created, String isPublic, int grono, int grpord, int depth) {
        this.id = id;
        this.author = author;
        this.userId = userId;
        this.title = title;
        this.content = content;
        this.created = created;
        this.isPublic = isPublic;
        this.grono = grono;
        this.grpord = grpord;
        this.depth = depth;
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

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
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

    public String getIsPublic() {
        return isPublic;
    }

    public void setIsPublic(String isPublic) {
        this.isPublic = isPublic;
    }

    public int getGrono() {
        return grono;
    }

    public void setGrono(int grono) {
        this.grono = grono;
    }

    public int getGrpord() {
        return grpord;
    }

    public void setGrpord(int grpord) {
        this.grpord = grpord;
    }

    public int getDepth() {
        return depth;
    }

    public void setDepth(int depth) {
        this.depth = depth;
    }

    @Override
    public String toString() {
        return "AskVO{" +
                "id=" + id +
                ", author=" + author +
                ", userId='" + userId + '\'' +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", created='" + created + '\'' +
                ", isPublic='" + isPublic + '\'' +
                ", grono=" + grono +
                ", grpord=" + grpord +
                ", depth=" + depth +
                '}';
    }
}
