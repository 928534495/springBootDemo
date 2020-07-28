package com.example.demo.service.impl;


import com.example.demo.bean.Files;
import com.example.demo.bean.FilesInfo;
import com.example.demo.bean.User;
import com.example.demo.bean.UserPage;
import com.example.demo.mapper.*;
import com.example.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;


@Service
public class UserServiceImpl implements UserService {

    @Autowired
    public AdminMapper adminMapper;
    @Autowired
    public UserMapper userMapper;
    @Autowired
    public FileMapper fileMapper;
    @Autowired
    public SystemLogMapper systemLogMapper;
    @Autowired
    public MenuMapper menuMapper;

    @Override
    public User login(User user) {
        return userMapper.login(user);
    }

    @Override
    public int verAccount(String uAccout) {
        return  userMapper.verAccount(uAccout);
    }

    @Override
    public String regis(User user) {

        int b=0;
        int a = userMapper.verAccount(user.getUserAccount());
        if (a > 0) {
            int a1 = userMapper.uVerifiPhone(user.getUserPhone());
            if (a1 > 0) {
               b = userMapper.regis(user);
               if(b>0){
                   return "b";
               }
               return "a1";
            }
            return "a";
        }
        return null;
    }

    @Override
    public int uVerifiPhone(String user_phone) {

        return userMapper.uVerifiPhone(user_phone);
    }

    @Override
    public UserPage<FilesInfo> listFileInfo(HashMap<String, Object> hashMap) {

        UserPage<FilesInfo> userPage = new UserPage<>();
        List<FilesInfo> list = fileMapper.filesInfoList(hashMap);
        userPage.setCount(fileMapper.selectInfoFileCount(hashMap));
        userPage.setData(list);

        return userPage;
    }

    @Override
    public User changeUserMsg(HttpServletRequest request, HttpServletResponse response) {


            HttpSession httpSession = request.getSession();
           User user = (User) httpSession.getAttribute("user");
            user.setUserPassword("");


        return user;
    }

    @Override
    public boolean changeMsg(User user) {


            int a=userMapper.changeMsg(user);

        return a>0;
    }

    @Override
    public User verifyPass(int userId) {


        return userMapper.verifyPass(userId);
    }

    @Override
    public int insetFile(Files files) {

        return fileMapper.insetFile(files);
    }

    @Override
    public Files findFiles(int fileId) {

        return fileMapper.findFiles(fileId);
    }


}
