package com.example.demo.service.impl;

import com.alibaba.fastjson.JSON;

import com.example.demo.aop.SystemLog;
import com.example.demo.bean.*;
import com.example.demo.mapper.*;
import com.example.demo.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {

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

    public Admin login(Admin admin, HttpServletRequest request, HttpServletResponse response) {

        Admin newadmin = null;
        if(admin != null){

            newadmin = adminMapper.login(admin);
            HttpSession httpSession=request.getSession();
            httpSession.setAttribute("admin",newadmin);
        }

        return newadmin;
    }

    @Override

    public List<Admin> listAdmin() {

        List<Admin> list=null;
        Admin newadmin = null;
        list = adminMapper.adminList(new Admin());

        return list;
    }

    @Override

    public UserPage<UserInfo> listUser(HashMap<String, Object> hashMap) {


        UserPage<UserInfo> userPage = null;
        List<UserInfo> list = userMapper.selectUserInfoList(hashMap);
        userPage = new UserPage<>();
        userPage.setCount(userMapper.selectUserCount(hashMap));
        userPage.setData(list);

        return userPage;
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

    public List<Menu> getMenu(Admin admin) {

        List<Menu>  menus = menuMapper.findAll(admin.getAdminId());


        return menus;
    }

    @Override

    public int fileAudit(HashMap<String, Object> hashMap) {

          int  a = fileMapper.updateFile(hashMap);


        return a;
    }

    @Override

    public int updateUser(HashMap<String, Object> hashMap) {


           int  a = userMapper.updateUser(hashMap);

        return a;
    }

    @Override

    public List<FileType> fileType(HashMap<String, Object> hashMap) {


            List<FileType> list = fileMapper.fileTypeList(hashMap);

        return list;
    }

//    @Override
//    @Log(operationName = "文件类型列表",operationType = "显示文件类型列表")
//    public List<FileType> type() {
//
//            HashMap<String, Object> map = new HashMap<>();
//            List<FileType> list = fileMapper.fileTypeList(map);
//
//        return list;
//    }

    @Override

    public int typeAudit(HashMap<String, Object> hashMap) {

        Integer a = fileMapper.setType(hashMap);
        return a;
    }

    @Override

    public int updateLevel(HashMap<String, Object> hashMap) {


          int  a = adminMapper.updateLevel(hashMap);


        return a;
    }

    @Override

    public List<Level> levelList() {

            List<Level> levels = adminMapper.levelList();

        return levels;
    }

    @Override

    public UserPage<SystemLog> listSystemLog(HashMap<String, Object> hashMap) {
        //主配置文件


            List<SystemLog> list = systemLogMapper.listSystemLog(hashMap);

            System.out.println("list=" + JSON.toJSONString(list));
            UserPage<SystemLog>  userPage = new UserPage<>();

            userPage.setCount(systemLogMapper.selectLogCount(hashMap));
            userPage.setData(list);

        return userPage;
    }

    @Override
    public int deleteLog(String id) {

        return systemLogMapper.deleteLog(id);
    }

    @Override
    public Level level(int userLevelId) {
        return adminMapper.level(userLevelId);
    }


}
