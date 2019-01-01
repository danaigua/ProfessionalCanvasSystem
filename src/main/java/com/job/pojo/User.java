package com.job.pojo;

public class User {
    private Integer userId;

    private String userName;

    private String userPassword;

    private String email;

    private String telephone;

    public User() {
    }

    public User(String userPassword, String telephone) {
        this.userPassword = userPassword;
        this.telephone = telephone;
    }

    public User(Integer userId, String userName, String userPassword, String email, String telephone) {
        this.userId = userId;
        this.userName = userName;
        this.userPassword = userPassword;
        this.email = email;
        this.telephone = telephone;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }
}