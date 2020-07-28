package com.example.demo.service;



import com.example.demo.aop.SystemLog;
import com.example.demo.bean.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;

public interface AdminService {
    public Admin login(Admin admin, HttpServletRequest request, HttpServletResponse response);

    public List<Admin> listAdmin();

    public UserPage<UserInfo> listUser(HashMap<String, Object> hashMap);

    public UserPage<FilesInfo> listFileInfo(HashMap<String, Object> hashMap);

    public List<Menu> getMenu(Admin admin);

    public int fileAudit(HashMap<String, Object> hashMap);

    public int updateUser(HashMap<String, Object> hashMap);

    public List<FileType> fileType(HashMap<String, Object> hashMap);

//    public List<FileType> type();

    public int typeAudit(HashMap<String, Object> hashMap);

    public int updateLevel(HashMap<String, Object> hashMap);

    public List<Level> levelList();

    public UserPage<SystemLog> listSystemLog(HashMap<String, Object> hashMap);

    public int deleteLog(String id);

    Level level(int userLevelId);
}
