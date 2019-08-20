package com.bitacademy.wannavegan.dining.vo;

public class CommentVO {

    private int cno;
    private int bno;
    private String content;
    private String writer;
    private String reg_date;
    private float score;

    public CommentVO(int cno, int bno, String content, String writer, String reg_date, float score) {
        this.cno = cno;
        this.bno = bno;
        this.content = content;
        this.writer = writer;
        this.reg_date = reg_date;
        this.score = score;
    }

    public CommentVO() {

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

    public float getScore() {
        return score;
    }

    public void setScore(float score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return "CommentVO{" +
                "cno=" + cno +
                ", bno=" + bno +
                ", content='" + content + '\'' +
                ", writer='" + writer + '\'' +
                ", reg_date='" + reg_date + '\'' +
                ", score=" + score +
                '}';
    }
}
