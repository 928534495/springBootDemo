package com.example.demo.control;

import com.alibaba.fastjson.JSON;

import com.example.demo.bean.*;
import com.example.demo.service.AdminService;
import com.example.demo.service.IntegralService;
import com.example.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/userControl")
public class UserControl {
    @Autowired
    private UserService userService;
    @Autowired
    private AdminService adminService;

    @Autowired
    private IntegralService integralService;

    @RequestMapping(value = "/loginPage")
    public String loginPage(HttpServletRequest request, HttpServletResponse response) {
        return "/web/userJsp/login.jsp";
    }

    @RequestMapping(value = "/login")
    @ResponseBody  /*发送数据需要加这个*/
    public void login(User u, HttpServletRequest request, HttpServletResponse response) throws IOException {


        String userJson = request.getParameter("user");
        User user = JSON.parseObject(userJson, User.class);

        User newUser = userService.login(user);

        if (newUser != null) {
            response.getWriter().print("success");
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("user", newUser);
        } else {
            response.getWriter().print("fail");
        }


    }

    @RequestMapping(value = "/uVerification")
    @ResponseBody  /*发送数据需要加这个*/
    public void uVerification(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String uAccout = request.getParameter("uAccount");

        if (userService.verAccount(uAccout) > 0) {
            response.getWriter().print("no");
            System.out.println("no");
        } else {
            response.getWriter().print("ok");
            System.out.println("ok");
        }

    }

    @RequestMapping(value = "/regis")
    @ResponseBody  /*发送数据需要加这个*/
    public String regis(HttpServletRequest request, HttpServletResponse response) throws IOException {


        String data = request.getParameter("Jsondata");
        System.out.println("Jsondata=" + data);

        User user = JSON.parseObject(data, User.class);

        String str = userService.regis(user);
        String msg = null;
        if (str == null) {
            response.getWriter().print("failAccount");
        } else {
            if (str.equals("a")) {
                response.getWriter().print("failPhone");
            }
            if (str.equals("a1")) {
                response.getWriter().print("fail");
            }
            if (str.equals("b")) {
                response.getWriter().print("success");
            }
        }


        return str;
    }

    @RequestMapping(value = "/uVerifiPhone")
    @ResponseBody  /*发送数据需要加这个*/
    public void uVerifiPhone(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String user_phone = request.getParameter("user_phone");

        if (userService.uVerifiPhone(user_phone) > 0) {
            response.getWriter().print("no");
            System.out.println("no");
        } else {
            response.getWriter().print("ok");
            System.out.println("ok");
        }

    }

    @RequestMapping(value = "/listFileInfo")
    @ResponseBody  /*发送数据需要加这个*/
    public String listFileInfo(HttpServletRequest request, HttpServletResponse response) throws IOException {

        HttpSession httpSession = request.getSession();
        User user = (User) httpSession.getAttribute("user");

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
        map.put("userAccount", user.getUserAccount());
        if (fileType != null && !fileType.equals("--请选择类型--")) {
            map.put("fileType", fileType);
        }

        int intPage = 0;
        int intLimit = 0;

        if (limit != null && !limit.equals("")) {
            intLimit = Integer.parseInt(limit);
        } else {
            intLimit = 10;
        }
        if (page != null && !page.equals("")) {

            intPage = (Integer.parseInt(page) - 1) * intLimit;
        } else {
            intPage = 0;
        }

        map.put("page", intPage);
        map.put("limit", intLimit);

        UserPage<FilesInfo> userPage = userService.listFileInfo(map);
//        response.getWriter().print(JSON.toJSONString(userPage));
        return JSON.toJSONString(userPage);


    }

    @RequestMapping(value = "/main")
    public String main(HttpServletRequest request, HttpServletResponse response) {

        return "/web/user/jsp/main.jsp";
    }

    @RequestMapping(value = "/changeUserMsg")
    public String changeUserMsg(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {

        User user = userService.changeUserMsg(request, response);

        request.setAttribute("user", user);

        return "/web/user/jsp/myMsg.jsp";
    }

    @RequestMapping(value = "/changeMsg")
    @ResponseBody  /*发送数据需要加这个*/
    public void changeMsg(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String userData = request.getParameter("Jsondata");
        System.out.println("userData=" + userData);
        User user = JSON.parseObject(userData, User.class);
        System.out.println("user==" + user.toString());


        HttpSession httpSession = request.getSession();
        User httpUser = (User) httpSession.getAttribute("user");
        user.setUserId(httpUser.getUserId());

        boolean b = userService.changeMsg(user);
        if (b) {
            response.getWriter().print("success");


            User newuser = userService.verifyPass(httpUser.getUserId());
            HttpSession session = request.getSession();
            user.setUserPassword("");
            session.setAttribute("user", newuser);
        } else {
            response.getWriter().print("fail");
        }


    }

    @RequestMapping(value = "/verifyPass")
    @ResponseBody  /*发送数据需要加这个*/
    public void verifyPass(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String pass = request.getParameter("pass");

        System.out.println("pass==" + pass);

        HttpSession httpSession = request.getSession();
        User httpUser = (User) httpSession.getAttribute("user");


        User user = userService.verifyPass(httpUser.getUserId());

        if (pass.equals(user.getUserPassword())) {
            response.getWriter().print("success");
            HttpSession session = request.getSession();
            user.setUserPassword("");
            session.setAttribute("user", user);
        } else {
            response.getWriter().print("fail");
        }


    }

    @RequestMapping(value = "/searchFile")
    public String searchFile(HttpServletRequest request, HttpServletResponse response) {
        return "/web/user/jsp/searchFile.jsp";
    }

    @RequestMapping(value = "/searchFileInfo")
    @ResponseBody  /*发送数据需要加这个*/
    public String searchFileInfo(HttpServletRequest request, HttpServletResponse response) throws IOException {

//        HttpSession httpSession = request.getSession();
//        User user = (User) httpSession.getAttribute("user");

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
//        map.put("userAccount", user.getUserAccount());
        if (fileType != null && !fileType.equals("--请选择类型--")) {
            map.put("fileType", fileType);
        }

        int intPage = 0;
        int intLimit = 0;

        if (limit != null && !limit.equals("")) {
            intLimit = Integer.parseInt(limit);
        } else {
            intLimit = 10;
        }
        if (page != null && !page.equals("")) {

            intPage = (Integer.parseInt(page) - 1) * intLimit;
        } else {
            intPage = 0;
        }

        map.put("page", intPage);
        map.put("limit", intLimit);

        UserPage<FilesInfo> userPage = userService.listFileInfo(map);
//        response.getWriter().print(JSON.toJSONString(userPage));
        return JSON.toJSONString(userPage);

    }

    @RequestMapping(value = "/uploadFilePage")
    public String uploadFilePage(HttpServletRequest request, HttpServletResponse response) {

        HashMap<String, Object> map = new HashMap<>();
        map.put("state", 2);
        List<FileType> list = adminService.fileType(map);
        request.setAttribute("fileTypeList", list);
//        fileType(request,response);
        return "/web/user/jsp/uploadFile.jsp";
    }

    @RequestMapping(value = "/uploadFile")
    @ResponseBody
    @Transactional/*实现事务操作*/
    public String uploadFile(MultipartFile file, String fileName, HttpServletRequest request, HttpServletResponse response) {

        String title = request.getParameter("title");
        String integral = request.getParameter("integral");
        String content = request.getParameter("content");

        System.out.println("title=" + title);
        System.out.println("integral=" + integral);
        System.out.println("content=" + content);
        System.out.println("文件大小=" + file.getSize());

        UserPage<String> page = new UserPage();
        List<String> list = null;

        if (title != null && !title.equals("") && integral != null && !integral.equals("") && content != null && !content.equals("")) {


            try {
                String originalName = file.getOriginalFilename();
                String prefix = originalName.substring(originalName.lastIndexOf(".") + 1);
                Date date = new Date();
                String uuid = UUID.randomUUID() + "";
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
                String dataStr = simpleDateFormat.format(date);
                String savePath = request.getSession().getServletContext().getRealPath("/upload");
                String projectPath = savePath + File.separator + dataStr + File.separator + uuid + "." + prefix;
                System.out.println("projectPath==" + projectPath);
                File files = new File(projectPath);

                if (!files.getParentFile().exists()) {
                    System.out.println("files11111=" + files.getPath());
                    files.getParentFile().mkdirs();
                }

                file.transferTo(files); // 将接收的文件保存到指定文件中
                System.out.println(projectPath);
                String msg = uuid + "." + prefix;
                list = new ArrayList<>();
                list.add(msg);

                if (files.exists()) {

                    HashMap<String, Object> hashMap = new HashMap<>();
                    hashMap.put("typeSuffix", prefix);
                    List<FileType> fileTypeList = adminService.fileType(hashMap);

                    System.out.println("文件存在！！");
                    HttpSession httpSession = request.getSession();
                    User user = (User) httpSession.getAttribute("user");
                    Files files1 = new Files();
                    files1.setFileTitle(title);
                    files1.setFileContent(content);
                    files1.setFileIntegral(Integer.parseInt(integral));
                    files1.setFileUserId(user.getUserId());
                    files1.setFileName(originalName);
                    files1.setFileLeagth((int) file.getSize());
                    files1.setFileTypeId(fileTypeList.get(0).getTypeId());
                    files1.setFilePath(projectPath);
                    int a = userService.insetFile(files1);
                    if (a > 0) {
//                       int g=100/0;
                        page.setMsg("上传成功");
                        Level level = adminService.level(user.getUserLevelId());

                        int score = (int) (fileTypeList.get(0).getTypeProportion() * level.getLevelProportion());

                        hashMap.put("userId", user.getUserId());
                        hashMap.put("integral", score + user.getUserScore());
                        int d = adminService.updateUser(hashMap);

                        Integral integral1 = new Integral();
                        integral1.setIntegralFileId(files1.getFileId());
                        integral1.setIntegralScore(score);
                        integral1.setIntegralThing("上传");
                        integral1.setIntegralUserId(user.getUserId());

                        int c = integralService.insetIntegral(integral1);

                    } else {
                        page.setMsg("上传失败");
                    }

                } else {
                    page.setMsg("上传失败");
                }

            } catch (IOException e) {
                e.printStackTrace();
                return null;
            }

        } else {
            page.setMsg("请填写完整");
        }


        page.setData(list);

//        String st= JSON.toJSONString(a);
//        System.out.println(st);
        return JSON.toJSONString(page);
    }

    //    @RequestMapping(value = "/upload")
//    @ResponseBody
//    public Object upload(HttpServletRequest request, HttpServletResponse response,
//                         MultipartFile file,String fileName) {
//
//        System.out.println("fileName=" + fileName);
//        try {
//            //获取文件名
//            String originalName = file.getOriginalFilename();
//            //扩展名
//            String prefix = originalName.substring(originalName.lastIndexOf(".") + 1);
//            Date date = new Date();
//            //使用UUID+后缀名保存文件名，防止中文乱码问题
//            String uuid = UUID.randomUUID() + "";
//            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
//            String dateStr = simpleDateFormat.format(date);
//            String savePath = request.getSession().getServletContext().getRealPath("/upload/");
//            //要保存的问题件路径和名称
//            String projectPath = savePath + dateStr + File.separator + uuid + "." + prefix;
//
//            System.out.println("projectPath==" + projectPath);
//            File files = new File(projectPath);
//            //打印查看上传路径
//            if (!files.getParentFile().exists()) {//判断目录是否存在
//                System.out.println("files11111=" + files.getPath());
//                files.getParentFile().mkdirs();
//            }
//            file.transferTo(files); // 将接收的文件保存到指定文件中
//            System.out.println(projectPath);
//            LayuiData layuiData=new LayuiData();
//            layuiData.setCode(0);
//            layuiData.setMsg("上传成功");
//            return JSON.toJSONString(layuiData);
//        } catch (Exception e) {
//            e.printStackTrace();
//            return null;
//        }
    @RequestMapping(value = "/fileType")
    public void fileType(HttpServletRequest request, HttpServletResponse response) {

        HashMap<String, Object> map = new HashMap<>();
        map.put("state", 2);
        List<FileType> list = adminService.fileType(map);


        request.setAttribute("fileTypeList", list);

    }

    @RequestMapping(value = "/dowload")
    @ResponseBody
    public String dowload(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String fileId = request.getParameter("fileId");
        System.out.println("fileId=" + fileId);
        HttpSession httpSession = request.getSession();
        User user = (User) httpSession.getAttribute("user");
        Files files = userService.findFiles(Integer.parseInt(fileId));
        System.out.println("files=" + files);
        HashMap<String, Object> hashMap = new HashMap<>();
        if (user.getUserId() == files.getFileUserId()) {

//            SqlSessionFactoryBean
        } else {
            if (user.getUserScore() > files.getFileIntegral()) {
                int score = user.getUserScore() - files.getFileIntegral();
                hashMap.put("userId", user.getUserId());
                hashMap.put("integral", score);
                int d = adminService.updateUser(hashMap);

                Integral integral1 = new Integral();
                integral1.setIntegralFileId(files.getFileId());
                integral1.setIntegralScore(files.getFileIntegral());
                integral1.setIntegralThing("下载");
                integral1.setIntegralUserId(user.getUserId());

                int c = integralService.insetIntegral(integral1);

            } else {
                return "integral";
//                response.getWriter().print("integral");
            }
        }
        if (files.getFilePath() != null && !files.getFilePath().equals("")) {
            return "success";
//            response.getWriter().print("success");
        } else {
            return "file";
//            response.getWriter().print("file");
        }

//        return "下载成功";


    }

    @RequestMapping(value = "/dowloadFile")
//    @ResponseBody
    public void dowloadFile(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String fileId = request.getParameter("fileId");
        System.out.println("fileId=" + fileId);
        Files files = userService.findFiles(Integer.parseInt(fileId));
        System.out.println("dowloadFile+files=" + files);

        if (files.getFilePath() != null && !files.getFilePath().equals("")) {
            //        通知浏览器以下载的方式打开
            response.setContentType("text/html;charset=utf-8");
            response.setContentLength(files.getFileLeagth());
            response.addHeader("Content-Type", "application/octet-stream");
            response.addHeader("Content-Disposition", "attachment;filename=" + files.getFileName());
            //通过文件输入流读取文件
            InputStream in = null;
            try {
                in = new FileInputStream(files.getFilePath());
//                BufferedInputStream bufferedInputStream=new BufferedInputStream(in);
//                byte[] b=new byte[bufferedInputStream.available()];
                OutputStream out = null;
//                bufferedInputStream.read(b);
                out = response.getOutputStream();
//                out.write(b);

//                bufferedInputStream.close();
//                out.flush();
//                out.write(b);

                byte[] bytes = new byte[1024];
                int len = 0;
                while ((len = in.read(bytes)) != -1) {
                    out.write(bytes, 0, len);
                    out.flush();
                    System.out.println(len);
                }




            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (in != null) {
                    try {
                        in.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }
    @RequestMapping(value = "/findIntegralPage")
    public String findIntegralPage(){

        return "/web/user/jsp/searchIntegral.jsp";
    }
    @RequestMapping(value = "/findIntegral")
    @ResponseBody
    public String findIntegral(HttpServletRequest request, HttpServletResponse response){

        HashMap<String ,Object> hashMap=new HashMap<>();
        String page = request.getParameter("page");
        String limit = request.getParameter("limit");
        String startTime = request.getParameter("startTime");
        String endTime = request.getParameter("endTime");
        String fileName = request.getParameter("fileName");
        String fileType = request.getParameter("fileType");

        System.out.println("page=" + page + "  limit=" + limit + "  fileType===" + fileType);
        hashMap.put("startTime", startTime);
        hashMap.put("endTime", endTime);
        hashMap.put("fileName", fileName);
//        map.put("userAccount", user.getUserAccount());
        if (fileType != null && !fileType.equals("--请选择类型--")) {
            hashMap.put("fileType", fileType);
        }

        int intPage = 0;
        int intLimit = 0;

        if (limit != null && !limit.equals("")) {
            intLimit = Integer.parseInt(limit);
        } else {
            intLimit = 10;
        }
        if (page != null && !page.equals("")) {

            intPage = (Integer.parseInt(page) - 1) * intLimit;
        } else {
            intPage = 0;
        }

        hashMap.put("page", intPage);
        hashMap.put("limit", intLimit);
        HttpSession httpSession=request.getSession();
        User user=(User) httpSession.getAttribute("user");

        hashMap.put("userId",user.getUserId());
        UserPage<Integral>  userPagepage= integralService.findIntegral(hashMap);

        return JSON.toJSONString(userPagepage);

    }

}
