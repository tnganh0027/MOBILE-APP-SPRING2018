package com.android.myapplication.model;

public class Anime {
    private String position;
    private String company;
    private String description;
    private String requirement;;
    private String area;

    private String salary;
    private String img;

    public Anime(){
    }

    public Anime(String position, String description, String company, String area, String requirement, String salary, String img) {
        this.position = position;
        this.company = company;
        this.description = description;
        this.requirement = requirement;
        this.area = area;
        this.salary = salary;
        this.img = img;
    }

    public String getPosition() {
        return position;
    }

    public String getDescription() {
        return this.description;
    }

    public String getCompany() {
        return company;
    }

    public String getArea() {
        return area;
    }

    public String getRequirement() {
        return requirement;
    }

    public String getSalary() {
        return salary;
    }

    public String getImage_url() {
        return img;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public void setRequirement(String requirement) {
        this.requirement = requirement;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public void setImage_url(String img) {
        this.img = img;
    }
}
