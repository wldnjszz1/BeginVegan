package com.bitacademy.wannavegan.board.vo;

public class CommentVO{

    private int id;
    private int author;
    private int board_id;
    private String content;
    private String created;

    public CommentVO() {

    }

    public CommentVO(int id, int author, int board_id, String content, String created) {
        this.id = id;
        this.author = author;
        this.board_id = board_id;
        this.content = content;
        this.created = created;
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

    public int getBoard_id() {
        return board_id;
    }

    public void setBoard_id(int board_id) {
        this.board_id = board_id;
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

    @Override
    public String toString() {
        return "CommentVO{" +
                "id=" + id +
                ", author=" + author +
                ", board_id=" + board_id +
                ", content='" + content + '\'' +
                ", created='" + created + '\'' +
                '}';
    }
}
