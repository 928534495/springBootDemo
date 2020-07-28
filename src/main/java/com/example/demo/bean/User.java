package com.example.demo.bean;

import java.util.List;
import java.util.Map;

public class User {
    private int userId;
    private String userName;
    private String userAccount;
    private String userPassword;
    private String userSex;
    private String userEducation;
    private String userOccupation;
    private String  userPhone;
    private String userEmail;
    private String userStatus;
    private int userScore;
    private String userCreateDate;
    private int userLevelId;
    private int userDownloadCount;
    private int userUploadCount;
    private Map someMap;
//    private     someProps
    private List someList;

    public User() {
        super();
    }

    public Map getSomeMap() {
        return someMap;
    }

    public void setSomeMap(Map someMap) {
        this.someMap = someMap;
    }

    public List getSomeList() {
        return someList;
    }

    public void setSomeList(List someList) {
        this.someList = someList;
    }

    public User(int userId, String userName, String userAccount, String userPassword, String userSex, String userEducation, String userOccupation, String userPhone, String userEmail, String userStatus, int userScore, String userCreateDate, int userLevelId, int userDownloadCount, int userUploadCount) {
        this.userId = userId;
        this.userName = userName;
        this.userAccount = userAccount;
        this.userPassword = userPassword;
        this.userSex = userSex;
        this.userEducation = userEducation;
        this.userOccupation = userOccupation;
        this.userPhone = userPhone;
        this.userEmail = userEmail;
        this.userStatus = userStatus;
        this.userScore = userScore;
        this.userCreateDate = userCreateDate;
        this.userLevelId = userLevelId;
        this.userDownloadCount = userDownloadCount;
        this.userUploadCount = userUploadCount;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", userAccount='" + userAccount + '\'' +
                ", userPassword='" + userPassword + '\'' +
                ", userSex='" + userSex + '\'' +
                ", userEducation='" + userEducation + '\'' +
                ", userOccupation='" + userOccupation + '\'' +
                ", userPhone='" + userPhone + '\'' +
                ", userEmail='" + userEmail + '\'' +
                ", userStatus='" + userStatus + '\'' +
                ", userScore=" + userScore +
                ", userCreateDate=" + userCreateDate +
                ", userLevelId=" + userLevelId +
                ", userDownloadCount=" + userDownloadCount +
                ", userUploadCount=" + userUploadCount +
                '}';
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserAccount() {
        return userAccount;
    }

    public void setUserAccount(String userAccount) {
        this.userAccount = userAccount;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserSex() {
        return userSex;
    }

    public void setUserSex(String userSex) {
        this.userSex = userSex;
    }

    public String getUserEducation() {
        return userEducation;
    }

    public void setUserEducation(String userEducation) {
        this.userEducation = userEducation;
    }

    public String getUserOccupation() {
        return userOccupation;
    }

    public void setUserOccupation(String userOccupation) {
        this.userOccupation = userOccupation;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserStatus() {
        return userStatus;
    }

    public void setUserStatus(String userStatus) {
        this.userStatus = userStatus;
    }

    public int getUserScore() {
        return userScore;
    }

    public void setUserScore(int userScore) {
        this.userScore = userScore;
    }

    public String getUserCreateDate() {
        return userCreateDate;
    }

    public void setUserCreateDate(String userCreateDate) {
        this.userCreateDate = userCreateDate;
    }

    public int getUserLevelId() {
        return userLevelId;
    }

    public void setUserLevelId(int userLevelId) {
        this.userLevelId = userLevelId;
    }

    public int getUserDownloadCount() {
        return userDownloadCount;
    }

    public void setUserDownloadCount(int userDownloadCount) {
        this.userDownloadCount = userDownloadCount;
    }

    public int getUserUploadCount() {
        return userUploadCount;
    }

    public void setUserUploadCount(int userUploadCount) {
        this.userUploadCount = userUploadCount;
    }
}
