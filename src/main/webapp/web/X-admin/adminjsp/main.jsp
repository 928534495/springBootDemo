<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/5
  Time: 20:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>后台登录-X-admin2.2</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/web/X-admin/css/font.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/web/X-admin/css/xadmin.css">
    <!-- <link rel="stylesheet" href="./css/theme5.css"> -->
    <script src="<%=request.getContextPath()%>/web/X-admin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/web/X-admin/js/xadmin.js"></script>

    <script>
        // 是否开启刷新记忆tab功能
        // var is_remember = false;
    </script>
</head>
<body class="index">
<!-- 顶部开始 -->
<div class="container">
    <div class="logo">
        <a href="./main.jsp">X-admin v2.2</a></div>
    <div class="left_open">
        <a><i title="展开左侧栏" class="iconfont">&#xe699;</i></a>
    </div>
    <ul class="layui-nav left fast-add" lay-filter="">
        <li class="layui-nav-item">
            <a href="javascript:;">+新增</a>
            <dl class="layui-nav-child">
                <!-- 二级菜单 -->
                <dd>
                    <a onclick="xadmin.open('最大化','http://www.baidu.com','','',true)">
                        <i class="iconfont">&#xe6a2;</i>弹出最大化</a></dd>
                <dd>
                    <a onclick="xadmin.open('弹出自动宽高','http://www.baidu.com')">
                        <i class="iconfont">&#xe6a8;</i>弹出自动宽高</a></dd>
                <dd>
                    <a onclick="xadmin.open('弹出指定宽高','http://www.baidu.com',500,300)">
                        <i class="iconfont">&#xe6a8;</i>弹出指定宽高</a></dd>
                <dd>
                    <a onclick="xadmin.add_tab('在tab打开','member-list.html')">
                        <i class="iconfont">&#xe6b8;</i>在tab打开</a></dd>
                <dd>
                    <a onclick="xadmin.add_tab('在tab打开刷新','member-del.html',true)">
                        <i class="iconfont">&#xe6b8;</i>在tab打开刷新</a></dd>
            </dl>
        </li>
    </ul>
    <ul class="layui-nav right" lay-filter="">
        <li class="layui-nav-item">
            <a href="javascript:;">admin</a>
            <dl class="layui-nav-child">
                <!-- 二级菜单 -->
                <dd>
                    <a onclick="xadmin.open('个人信息','http://www.baidu.com')">个人信息</a></dd>
                <dd>
                    <a onclick="xadmin.open('切换帐号','http://www.baidu.com')">切换帐号</a></dd>
                <dd>
                    <a href="./login.jsp">退出</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item to-index">
            <a href="/">前台首页</a></li>
    </ul>
</div>
<!-- 顶部结束 -->
<!-- 中部开始 -->
<!-- 左侧菜单开始 -->
<div class="left-nav">
    <div id="side-nav">
        <ul id="nav">
<%--            <li>--%>
<%--                <a href="javascript:;">--%>
<%--                    <i class="iconfont left-nav-li" lay-tips="会员管理">&#xe6b8;</i>--%>
<%--                    <cite>会员管理</cite>--%>
<%--                    <i class="iconfont nav_right">&#xe697;</i></a>--%>
<%--                <ul class="sub-menu">--%>


<%--                    <li>--%>
<%--                        <a onclick="xadmin.add_tab('统计页面','<%=request.getContextPath()%>/X-admin/adminjsp/statistics.jsp')">--%>
<%--                            <i class="iconfont">&#xe6a7;</i>--%>
<%--                            <cite>统计页面</cite></a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <a onclick="xadmin.add_tab('用户列表','<%=request.getContextPath()%>/adminServlet?methodName=memberList',true)">--%>
<%--                            <i class="iconfont">&#xe6a7;</i>--%>
<%--                            <cite>用户列表</cite></a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <a onclick="xadmin.add_tab('管理员列表','<%=request.getContextPath()%>/adminServlet?methodName=listAdmin',true)">--%>
<%--                            <i class="iconfont">&#xe6a7;</i>--%>
<%--                            <cite>管理员列表</cite></a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <a onclick="xadmin.add_tab('文件列表','<%=request.getContextPath()%>/adminServlet?methodName=listFile',true)">--%>
<%--                            <i class="iconfont">&#xe6a7;</i>--%>
<%--                            <cite>文件列表</cite></a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <a onclick="xadmin.add_tab('会员删除','member-del.html')">--%>
<%--                            <i class="iconfont">&#xe6a7;</i>--%>
<%--                            <cite>会员删除</cite></a>--%>
<%--                    </li>--%>
<%--                    <li>--%>
<%--                        <a href="javascript:;">--%>
<%--                            <i class="iconfont">&#xe70b;</i>--%>
<%--                            <cite>会员管理</cite>--%>
<%--                            <i class="iconfont nav_right">&#xe697;</i></a>--%>
<%--                        <ul class="sub-menu">--%>
<%--                            <li>--%>
<%--                                <a onclick="xadmin.add_tab('会员删除','member-del.html')">--%>
<%--                                    <i class="iconfont">&#xe6a7;</i>--%>
<%--                                    <cite>会员删除</cite></a>--%>
<%--                            </li>--%>
<%--                            <li>--%>
<%--                                <a onclick="xadmin.add_tab('等级管理','member-list1.html')">--%>
<%--                                    <i class="iconfont">&#xe6a7;</i>--%>
<%--                                    <cite>等级管理</cite></a>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </li>--%>
<%--                </ul>--%>
<%--            </li>--%>
            <c:if test="${not empty menus}">
                <c:forEach var="i" items="${menus}">

                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="${i.menu_Name}">&#xe723;</i>
                            <cite>${i.menu_Name}</cite>
                            <i class="iconfont nav_right">&#xe697;</i>
                        </a>
                        <ul class="sub-menu">
                            <c:forEach var="j" items="${i.menuList}">
                            <li>
                                <a onclick="xadmin.add_tab('${j.menu_Name}','<%=request.getContextPath()%>${j.url}')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>${j.menu_Name}</cite></a>
                            </li>
                            </c:forEach>
                        </ul>
                    </li>
                </c:forEach>


            </c:if>


        </ul>
    </div>
</div>
<!-- <div class="x-slide_left"></div> -->
<!-- 左侧菜单结束 -->
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
        <ul class="layui-tab-title">
            <li class="home">
                <i class="layui-icon">&#xe68e;</i>我的桌面</li></ul>
        <div class="layui-unselect layui-form-select layui-form-selected" id="tab_right">
            <dl>
                <dd data-type="this">关闭当前</dd>
                <dd data-type="other">关闭其它</dd>
                <dd data-type="all">关闭全部</dd></dl>
        </div>
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <iframe src='<%=request.getContextPath()%>/adminControl/listAdmin' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
            </div>
        </div>
        <div id="tab_show"></div>
    </div>
</div>
<div class="page-content-bg"></div>
<style id="theme_style"></style>
<!-- 右侧主体结束 -->
<!-- 中部结束 -->
<script>//百度统计可去掉
var _hmt = _hmt || []; (function() {
    var hm = document.createElement("script");
    hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
})();</script>
</body>

</html>
