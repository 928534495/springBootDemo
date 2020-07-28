package com.example.demo.bean;

public class Admin {
    private int adminId;
    private String adminName;
    private String adminPassword;
    private int adminRoleId;
    private String roleName;

    public Admin(int adminId, String adminName, String adminPassword, int adminRoleId, String roleName) {
        this.adminId = adminId;
        this.adminName = adminName;
        this.adminPassword = adminPassword;
        this.adminRoleId = adminRoleId;
        this.roleName = roleName;
    }

    public int getAdminId() {
        return adminId;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword;
    }

    public int getAdminRoleId() {
        return adminRoleId;
    }

    public void setAdminRoleId(int adminRoleId) {
        this.adminRoleId = adminRoleId;
    }

    public Admin() {
        super();
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "adminId=" + adminId +
                ", adminName='" + adminName + '\'' +
                ", adminPassword='" + adminPassword + '\'' +
                ", adminRoleId=" + adminRoleId +
                ", roleName='" + roleName + '\'' +
                '}';
    }
}
