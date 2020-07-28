package com.example.demo.control;


import com.alibaba.fastjson.JSON;

import com.example.demo.aop.Log;
import com.example.demo.aop.SystemLog;
import com.example.demo.bean.*;
import com.example.demo.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;

@Controller
@RequestMapping("/adminControl")
public class AdminControl {

    @Autowired
    private AdminService adminService;

    @Log(operationName = "登录页面", operationType = "后台登录页面")
    @RequestMapping(value = "/loginPage")
    public String loginPage(HttpServletRequest request, HttpServletResponse response) throws IOException {

        return "/web/X-admin/adminjsp/login.jsp";
    }

    @Log(operationName = "登录", operationType = "管理员登录")
    @RequestMapping(value = "/login")
    @ResponseBody  /*发送数据需要加这个*/
    public String login(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String adminJson = request.getParameter("Jsondata");


        System.out.println("adminJson=" + adminJson);
        Admin admin = JSON.parseObject(request.getParameter("Jsondata"), Admin.class);

        Admin newadmin = adminService.login(admin, request, response);

        String msg = null;
        if (newadmin != null) {
            msg = "success";
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("admin", newadmin);
        } else {
            msg = "fail";
        }
        System.out.println("admin=" + JSON.toJSONString(newadmin));

        return msg;

    }

    @Log(operationName = "管理员列表", operationType = "显示管理员列表")
    @RequestMapping(value = "/listAdmin")
    public String listAdmin(HttpServletRequest request, HttpServletResponse response) {


        List<Admin> list = adminService.listAdmin();
        request.setAttribute("adminList", list);

        return "/web/X-admin/adminjsp/member-list1.jsp";

    }

    @Log(operationName = "用户列表页面", operationType = "显示用户列表页面")
    @RequestMapping(value = "/memberList")
    public String memberList(HttpServletRequest request, HttpServletResponse response) {

        return "/web/X-admin/adminjsp/member-list.jsp";
    }

    @Log(operationName = "用户列表", operationType = "显示用户列表")
    @RequestMapping(value = "/listUser")
    @ResponseBody  /*发送数据需要加这个*/
    public String listUser(HttpServletRequest request, HttpServletResponse response) throws IOException {

        System.out.println("listUser+==进来");

        HashMap<String, Object> map = new HashMap<>();
        String page = request.getParameter("page");
        String limit = request.getParameter("limit");
        String startTime = request.getParameter("startTime");
        String endTime = request.getParameter("endTime");
        String userAccount = request.getParameter("userAccount");
        System.out.println("page=" + page + "  limit=" + limit);
        map.put("startTime", startTime);
        map.put("endTime", endTime);
        map.put("userAccount", userAccount);
        int intPage = 0;
        int intLimit = 0;

        if (limit != null && limit != "") {
            intLimit = Integer.parseInt(limit);
        } else {
            intLimit = 10;
        }
        if (page != null && page != "") {

            intPage = (Integer.parseInt(page) - 1) * intLimit;
        } else {
            intPage = 0;
        }
        System.out.println(intLimit);
        map.put("page", intPage);
        map.put("limit", intLimit);

        UserPage<UserInfo> userPage = adminService.listUser(map);


//        response.getWriter().print(JSON.toJSONString(userPage));
        System.out.println("userPage=" + JSON.toJSONString(userPage));

        return JSON.toJSONString(userPage);
    }

    @Log(operationName = "文件管理页面", operationType = "显示文件管理页面")
    @RequestMapping(value = "/listFile")
    public String listFile(HttpServletRequest request, HttpServletResponse response) {


//        try {
//            type(request, response);
//        } catch (UnsupportedEncodingException e) {
//            e.printStackTrace();
//        }
        return "/web/X-admin/adminjsp/member-fileList.jsp";
    }

    @Log(operationName = "文件列表", operationType = "显示文件列表")
    @RequestMapping(value = "/listFileInfo")
    @ResponseBody  /*发送数据需要加这个*/
    public String listFileInfo(HttpServletRequest request, HttpServletResponse response) throws IOException {

        HashMap<String, Object> map = new HashMap<>();
        String page = request.getParameter("page");
        String limit = request.getParameter("limit");
        String startTime = request.getParameter("startTime");
        String endTime = request.getParameter("endTime");
        String fileName = request.getParameter("fileName");
        String fileType = request.getParameter("fileType");
        System.out.println("page=" + page + "  limit=" + limit + "  fileType===" + fileType);
        map.put("startTime", startTime);
        map.put("endTime", endTime);
        map.put("fileName", fileName);
        if (fileType != null && !fileType.equals("--请选择类型--")) {
            map.put("fileType", fileType);
        }

        int intPage = 0;
        int intLimit = 0;

        if (limit != null && limit != "") {
            intLimit = Integer.parseInt(limit);
        } else {
            intLimit = 10;
        }
        if (page != null && page != "") {

            intPage = (Integer.parseInt(page) - 1) * intLimit;
        } else {
            intPage = 0;
        }
        System.out.println(intLimit);
        map.put("page", intPage);
        map.put("limit", intLimit);


        UserPage<FilesInfo> userPage = adminService.listFileInfo(map);


        System.out.println("userPage=" + JSON.toJSONString(userPage));


        return JSON.toJSONString(userPage);

    }

    @Log(operationName = "显示菜单", operationType = "显示管理员主页菜单")
    @RequestMapping(value = "/getMenu")
    public String getMenu(HttpServletRequest request, HttpServletResponse response) throws IOException {

        HttpSession httpSession = request.getSession();
        Admin admin = (Admin) httpSession.getAttribute("admin");


        List<Menu> menus = adminService.getMenu(admin);
        request.setAttribute("menus", menus);

        System.out.println(JSON.toJSONString(menus));

        return "/web/X-admin/adminjsp/main.jsp";
    }

    @Log(operationName = "显示列表", operationType = "显示用户列表")
    @RequestMapping(value = "/fileAudit")
    @ResponseBody  /*发送数据需要加这个*/
    public String fileAudit(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String fileId = request.getParameter("fileId");
        String parametersState = request.getParameter("parametersState");
        String condition = request.getParameter("condition");
        System.out.println("fileId=" + fileId);
        System.out.println("parametersState=" + parametersState);

        HashMap<String, Object> hashMap = new HashMap<>();
        String msg = null;
        int state = 0;
        if (fileId != null && fileId != "" && parametersState != null && parametersState != "" && condition != null && condition != "") {

            if (condition.equals("2")) {

                if (parametersState.equals("审核通过") || parametersState.equals("待审核") || parametersState.equals("审核不通过")) {
                    state = 2;
                }
            } else if (condition.equals("3")) {
                if (parametersState.equals("审核通过") || parametersState.equals("待审核") || parametersState.equals("审核不通过")) {
                    state = 3;
                }
            }
            hashMap.put("state", state);
            hashMap.put("fileId", fileId);


            int a = adminService.fileAudit(hashMap);


            if (a > 0) {

                msg = "success";

            } else {
                msg = "fail";

            }
        }

        return msg;
    }

    @Log(operationName = "修改用户状态", operationType = "修改用户状态")
    @RequestMapping(value = "/userAudit")
    @ResponseBody  /*发送数据需要加这个*/
    public String userAudit(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String userId = request.getParameter("userId");
        String userStatus = request.getParameter("parametersState");

        System.out.println("userId=" + userId);
        System.out.println("userStatus=" + userStatus);

        HashMap<String, Object> hashMap = new HashMap<>();
        int state = 0;
        String msg = null;
        if (userId != null && userId != "" && userStatus != null && userStatus != "") {

            if (userStatus.equals("启用")) {


                state = 2;

            } else if (userStatus.equals("禁用")) {

                state = 3;

            }
            hashMap.put("state", state);
            hashMap.put("userId", userId);

            int a = adminService.updateUser(hashMap);


            if (a > 0) {

                msg = "success";

            } else {
                msg = "fail";
            }
        }

        return msg;

    }

    @Log(operationName = "文件类型列表", operationType = "显示文件类型列表")
    @RequestMapping(value = "/fileType")
    public String fileType(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {


        HashMap<String, Object> map = new HashMap<>();
        List<FileType> list = adminService.fileType(map);


        request.setAttribute("fileTypeList", list);
        levelList(request, response);

        return "/web/X-admin/adminjsp/fileType";
    }

    //    @RequestMapping(value = "/type")
//    @ResponseBody  /*发送数据需要加这个*/
//    public List<FileType> type(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
//
//
//
//        List<FileType> list = adminService.type();
//
////        request.setAttribute("fileList", list);
//
//       return list;
//    }
    @Log(operationName = "文件类型", operationType = "修改文件类型")
    @RequestMapping(value = "/typeAudit")
    @ResponseBody  /*发送数据需要加这个*/
    public String typeAudit(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String typeId = request.getParameter("typeId");
        String type = request.getParameter("type");
        System.out.println("typeId=" + typeId);
        String msg = null;
        if (typeId != null && !typeId.equals("")) {
            int f = 0;
            int j = 0;
            String[] str = typeId.split(",");
            for (String value : str) {
                String[] st = value.split(":");
                String s = st[1].split("}")[0].replace("\"", "");
                if (!s.equals("on")) {

                    j++;
                    System.out.println("st[i]=" + s);


                    HashMap<String, Object> hashMap = new HashMap<>();
                    hashMap.put("typeId", s);
                    if (type.equals("add")) {
                        hashMap.put("state", "1");
                    } else if (type.equals("del")) {
                        hashMap.put("state", "2");
                    }

                    int a = adminService.typeAudit(hashMap);
                    if (a > 0) {
                        f++;
                    }

                }
            }

            if (f == j) {
                msg = "success";
                System.out.println("success");
            } else {
                msg = "fail";
                System.out.println("fail");
            }
        }

        return msg;
    }

    @Log(operationName = "管理员等级", operationType = "修改管理员等级")

    @RequestMapping(value = "/updateLevel")
    @ResponseBody  /*发送数据需要加这个*/
    public String updateLevel(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String levelName = request.getParameter("levelName");
        String levelScore = request.getParameter("levelScore");
        String levelId = request.getParameter("levelId");
        HashMap<String, Object> hashMap = new HashMap<>();
        hashMap.put("levelName", levelName);
        hashMap.put("levelScore", levelScore);
        hashMap.put("levelId", levelId);


        int a = adminService.updateLevel(hashMap);

        String msg = null;

        if (a > 0) {
            msg = "success";
        } else {
            msg = "fail";
        }
        return msg;
    }

    @Log(operationName = "管理员等级", operationType = "显示管理员等级列表")
    @RequestMapping(value = "/levelList")
    @ResponseBody  /*发送数据需要加这个*/
    public void levelList(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {


        List<Level> levels = adminService.levelList();


        System.out.println("levels==" + levels);
        request.setAttribute("levels", levels);
//        return levels;
    }

    @Log(operationName = "日志列表", operationType = "显示日志列表")
    @RequestMapping(value = "/listSystemLog")
    @ResponseBody  /*发送数据需要加这个*/

    public String listSystemLog(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HashMap<String, Object> map = new HashMap<>();
        String page = request.getParameter("page");
        String limit = request.getParameter("limit");
        String startTime = request.getParameter("startTime");
        String endTime = request.getParameter("endTime");
        String description = request.getParameter("description");



        System.out.println("description="+description);

        int intPage = 0;
        int intLimit = 0;

        if (limit != null && limit != "") {
            intLimit = Integer.parseInt(limit);
        } else {
            intLimit = 10;
        }
        if (page != null && page != "") {

            intPage = (Integer.parseInt(page) - 1) * intLimit;
        } else {
            intPage = 0;
        }

        map.put("page", intPage);
        map.put("limit", intLimit);
        if (startTime != null && !startTime.equals("")) {
            map.put("startTime", startTime);
            System.out.println("startTime="+startTime);
        }
        if (endTime != null && !endTime.equals("")) {
            map.put("endTime", endTime);
        }
        if (description != null && !description.equals("")) {
            map.put("description", description);
        }

        UserPage<SystemLog> userPage = adminService.listSystemLog(map);


        System.out.println("userPage=" + JSON.toJSONString(userPage));

        return JSON.toJSONString(userPage);
    }

    @Log(operationName = "日志管理页面", operationType = "显示日志管理页面")
    @RequestMapping(value = "/listLog")
    public String listLog(HttpServletRequest request, HttpServletResponse response) {

        return "/web/X-admin/adminjsp/systemLog";
    }
    @Log(operationName = "日志管理页面", operationType = "删除日志")
    @RequestMapping(value = "/deleteLog")
    @ResponseBody  /*发送数据需要加这个*/
    public String deleteLog(HttpServletRequest request, HttpServletResponse response){

        String id=request.getParameter("id");
        System.out.println("id===="+id);
        String data=request.getParameter("data");
        System.out.println("data=="+data);
        String msg=null;
        if(data!=null&&!data.equals("")){
            List<SystemLog> logs= JSON.parseArray(data,SystemLog.class);
            System.out.println("logs="+logs);
            int j=0;

            for (SystemLog log : logs) {

                if (adminService.deleteLog(log.getId()) > 0) {

                    j++;
                }

            }
            if(j==logs.size()){
                msg="success";
            }else{
                msg="fail";
            }
        }
        if(id!=null&&!id.equals("")){
            if(adminService.deleteLog(id)>0){
                msg="success";
            }else{
                msg="fail";
            }
        }

        return msg;
    }
}
