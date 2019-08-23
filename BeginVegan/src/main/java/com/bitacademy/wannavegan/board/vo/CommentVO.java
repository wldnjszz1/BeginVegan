package com.bitacademy.wannavegan.board.vo;


public class CommentVO{
    private int cno;
    private int bno;
    private int author;
    private String content;
    private String writer;
    private String reg_date;

    public CommentVO(int cno, int bno, int author, String content, String writer, String reg_date) {
        this.cno = cno;
        this.bno = bno;
        this.author = author;
        this.content = content;
        this.writer = writer;
        this.reg_date = reg_date;
    }

    public CommentVO(){

    }

    public int getCno() {
        return cno;
    }

    public void setCno(int cno) {
        this.cno = cno;
    }

    public int getBno() {
        return bno;
    }

    public void setBno(int bno) {
        this.bno = bno;
    }

    public int getAuthor() {
        return author;
    }

    public void setAuthor(int author) {
        this.author = author;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getReg_date() {
        return reg_date;
    }

    public void setReg_date(String reg_date) {
        this.reg_date = reg_date;
    }

    @Override
    public String toString() {
        return "CommentVO{" +
                "cno=" + cno +
                ", bno=" + bno +
                ", author=" + author +
                ", content='" + content + '\'' +
                ", writer='" + writer + '\'' +
                ", reg_date='" + reg_date + '\'' +
                '}';
    }
}