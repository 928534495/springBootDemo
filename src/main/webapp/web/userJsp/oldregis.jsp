<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/2
  Time: 20:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>用户登录</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%--响应式布局--%>
    <meta name="viewport" content="width=device- width, initial-scale=1.0, maximum-scale=1.0, user- scalable=no">


    <style>

        html, body {
            margin: 0 auto;
            padding: 0;
            width: 100%;
            height: 100%;
            text-align: center;
        }

        body {
            background-color: azure;
        }

        .cotent {
            width: 100%;
            height: 100%;
            text-align: center;
        }

        .login {
            min-width: 400px;
            max-width: 600px;
            height: 750px;
            border-radius: 10px;
            background-color: rgba(100, 200, 300, 0.5);
            margin: 0 auto;
            top: 50%;
            margin-top: -375px;
            display: block;
            position: relative;
        }
        .title{
            width: 100%;
            height: 50px;
            padding-top: 50px;
            font-size: 30px;
        }
        .input{
            width: 100%;
            height: 350px;
            font-size: 20px;
        }
        .account,.password,.submit{
            width: 100%;
            height: 60px;
            padding-top: 10px;
        }
        input{
           height: 40px;
            width: 300px;
            font-size: 20px;
        }
        .regis{
            width: 100%;
            height: 50px;
            font-size: 20px;
            text-align: left;
            margin-top: 255px;
        }

        hr{
            width: 80%;
        }

    </style>
    <script charset="UTF-8" src="<%=request.getContextPath()%>/staticFile/jquery-3.5.1.js"></script>
    <script charset="UTF-8" src="<%=request.getContextPath()%>/userJS/regis.js"></script>
    <%String path=request.getContextPath();%>
</head>
<body>

<input type="hidden" id="path" value="<%=request.getContextPath()%>">
<div class="cotent">
    <%--    --%>
    <div class="login">
        <div class="title">用户登录</div>

        <hr>
        <div class="input">
            <div class="account">
                账 号:<input type="text" placeholder="请输入用户名" id="account" name="account" onblur="uVerifi()">
                <span id="sp1"></span>
            </div>

            <div class="password">
                密 码:<input type="password" placeholder="请输入密码" id="password" name="password" onblur="passNull()">
                <span id="sp2"></span>
            </div>
            <div class="password">
                重复输入:<input type="nPassword" placeholder="请输入密码" id="nPassword" name="nPassword" onblur="npassNull()">
                <span id="sp3"></span>
            </div>
            <div class="password">
                性别:<input style="width: 50px;height: 30px"  type="radio" name="uSex" value="男" >男</input>
                <input style="width: 50px;height: 30px" type="radio" name="uSex" value="女" checked="checked">女</input>
                <span id="sp4"></span>
            </div>
            <div class="password">
                学历:<input type="education" placeholder="请输入密码" id="education" name="education" onblur="educationNull()">
                <span id="sp5"></span>
            </div>
            <div class="password">
                职业:<input type="occupation" placeholder="请输入密码" id="occupation" name="occupation" onblur="occupationNull()">
                <span id="sp6"></span>
            </div>
            <div class="password">
                手机号:<input type="phone" placeholder="请输入密码" id="phone" name="phone" onblur="phoneNull()">
                <span id="sp7"></span>
            </div>
            <div class="password">
                Email:<input type="email" placeholder="请输入密码" id="email" name="email" onblur="emailNull()">
                <span id="sp8"></span>
            </div>
            <div class="submit">
                <input id="sub" style="width: 100px "  type="button" onclick="regis()" value="提交">
            </div>


        </div>

        <div class="regis">
            <a href="<%=request.getContextPath()%>/userJsp/login.jsp" class="r_a">  >>>>登录</a>
        </div>

    </div>
</div>


</body>
</html>
