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
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%--响应式布局--%>
    <meta name="viewport" content="width=device- width, initial-scale=1.0, maximum-scale=1.0, user- scalable=no">

    <title>用户登录</title>
    <link href="<%=request.getContextPath()%>/web/staticFile/bootstrap-3.3.7-dist/css/bootstrap.css" type="text/css"
          rel="stylesheet">
    <link href="<%=request.getContextPath()%>/web/staticFile/bootstrap-3.3.7-dist/css/bootstrap-theme.css" type="text/css"
          rel="stylesheet">

    <style type="text/css">

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

       .cotent .container .login {
            min-width: 300px;
            max-width: 400px;
            height: 400px;
            border-radius: 10px;
            background-color: rgba(100, 200, 300, 0.5);
            margin: 0 auto;
            display: block;
            position: relative;
           margin-top: 20%;
        }

        /* @media only screen and  屏幕适配*/
        @media only screen and (min-width: 992px) {
            /*and后面要空格*/
            .login {
                background-color: #00CCCC;
            }
        }

        @media only screen and (min-width: 768px) {
            /*and后面要空格*/
            .login {
                background-color: cornsilk;
            }
        }


        .cotent .container .login .form-horizontal .form-group {
            padding: 10px;

        }

        .regis {
            width: 100%;
            height: 50px;
            font-size: 20px;
            text-align: left;
        }

        hr {
            width: 80%;
        }


    </style>

    <%String path = request.getContextPath();%>
</head>
<body>

<input type="hidden" id="path" value="<%=request.getContextPath()%>">
<div class="cotent">
    <%--    --%>
    <div class="container ">
        <div class="login row">



                <form class="form-horizontal ">
                    <div class="form-group">
                        <h3 class="form-title">登录</h3>
                        <hr>

                        <label class="col-md-3 control-label">账 号:</label>
                        <div class="col-md-6">
                            <input class="form-control" type="text" placeholder="请输入用户名" id="account" name="account"
                                   onblur="accountNull()">
                        </div>
                        <span class="col-md-3 control-label" style="text-align: left" id="sp1"></span>
                    </div>

                    <div class="form-group">
                        <label class="col-md-3 control-label">密 码:</label>
                        <div class="col-md-6">
                            <input class="form-control" type="password" placeholder="请输入密码" id="password"
                                   name="password"
                                   onblur="passNull()">
                        </div>

                        <span class="col-md-3 control-label " style="text-align: left" id="sp2"></span>
                    </div>
                    <div class="submit">
                        <input class="btn-default" id="sub" style="width: 100px " type="button" onclick="login()" value="提交">
                    </div>
                </form>



            <div class="regis">
                <a href="<%=request.getContextPath()%>/web/userJsp/regis.jsp" class="r_a"> >>>>注册</a>
            </div>
        </div>
    </div>
</div>


<script charset="UTF-8" src="<%=request.getContextPath()%>/web/staticFile/jquery-3.5.1.js"></script>
<script charset="UTF-8" src="<%=request.getContextPath()%>/web/staticFile/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<script charset="UTF-8" src="<%=request.getContextPath()%>/web/userJS/login.js"></script>

</body>
</html>
