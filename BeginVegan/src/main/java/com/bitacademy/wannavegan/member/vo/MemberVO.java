package com.bitacademy.wannavegan.member.vo;

public class MemberVO {
    private int id;
    private String user_id;
    private String password;
    private String type;
    private String email;

    public MemberVO() {
        super();
    }

    public MemberVO(int id, String user_id, String password, String type, String email){
        super();
        this.id = id;
        this.user_id = user_id;
        this.password = password;
        this.type = type;
        this.email = email;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "MemberVO{" +
                "id=" + id +
                ", user_id='" + user_id + '\'' +
                ", pasword='" + password + '\'' +
                ", type='" + type + '\'' +
                ", email='" + email + '\'' +
                '}';
    }


}
