package com.bitacademy.wannavegan.dining.vo;

public class DiningVO {
    private int id;
    private String title;
    private String link;
    private String category;
    private String telephone;
    private String address;
    private String roadAddress;
    private int mapx;
    private int mapy;
    private float score;


    public DiningVO() {
        super();
    }

    public DiningVO(int id, String title, String link, String category, String telephone, String address, String roadAddress, int mapx, int mapy) {
        super();
        this.id = id;
        this.title = title;
        this.link = link;
        this.category = category;
        this.telephone = telephone;
        this.address = address;
        this.roadAddress = roadAddress;
        this.mapx = mapx;
        this.mapy = mapy;
        this.score = score;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRoadAddress() {
        return roadAddress;
    }

    public void setRoadAddress(String roadAddress) {
        this.roadAddress = roadAddress;
    }

    public int getMapx() {
        return mapx;
    }

    public void setMapx(int mapx) {
        this.mapx = mapx;
    }

    public int getMapy() {
        return mapy;
    }

    public void setMapy(int mapy) {
        this.mapy = mapy;
    }

    public float getScore() { return score; }

    public void setScore() {  this.score = score; }

    @Override
    public String toString() {
        return "restaurantVO{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", link='" + link + '\'' +
                ", category='" + category + '\'' +
                ", telephone='" + telephone + '\'' +
                ", address='" + address + '\'' +
                ", roadAddress='" + roadAddress + '\'' +
                ", mapx=" + mapx +
                ", mapy=" + mapy +
                ", score=" + score +
                '}';
    }
}
