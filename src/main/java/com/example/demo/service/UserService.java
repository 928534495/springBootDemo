package com.example.demo.service;



import com.example.demo.bean.Files;
import com.example.demo.bean.FilesInfo;
import com.example.demo.bean.User;
import com.example.demo.bean.UserPage;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;

public interface UserService {




    public User login(User user);
    public int verAccount(String account);
    public String regis(User user);
    public int uVerifiPhone(String user_phone);

    public UserPage<FilesInfo> listFileInfo(HashMap<String, Object> hashMap);
    public User changeUserMsg(HttpServletRequest request, HttpServletResponse response);
    public boolean changeMsg(User user);
    public User verifyPass(int userId);
    public int insetFile(Files files);
    public Files findFiles(int fileId);


}
