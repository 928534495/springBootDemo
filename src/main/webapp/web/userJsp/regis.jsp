<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/5
  Time: 22:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>layui.form小例子</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%--响应式布局--%>
    <meta name="viewport" content="width=device- width, initial-scale=1.0, maximum-scale=1.0, user- scalable=no">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/web/staticFile/layui-v2.5.6/css/layui.css" media="all">
    <style type="text/css">

        .body{
            width: 100%;
            height: 100%;
            text-align: center;
        }

        .body .center {
            min-width: 400px;
            max-width: 600px;
            height: 750px;
            border-radius: 10px;
            background-color: rgba(100, 200, 300, 0.5);
            margin: 0 auto;
            position: absolute;
            top:50%;
            margin-top: -375px;
            left: 50%;
            margin-left: -200px;
            display: block;
        }

        .form {
            margin-right: 20px;
            padding-top: 50px;
        }
    </style>
</head>
<body>
<input type="hidden" id="path" value="<%=request.getContextPath()%>">
<div class="body">
    <div class="center">
        <h4 style="font-size:25px ;margin-top: 50px" >注册</h4>
        <hr style="width: 80%">
        <form class="layui-form form" action="">
            <div class="layui-form-item">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-inline">
                    <input type="text" name="user_name" required  lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
                    <div class="layui-form-mid layui-word-aux"></div>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">账号</label>
                <div class="layui-input-inline">
                    <input id="user_account" type="text" name="user_account" required  lay-verify="required" placeholder="请输入账号" autocomplete="off" class="layui-input" onblur="uVerifi()">
                </div>
                <div class="layui-form-mid layui-word-aux account"></div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">密码框</label>
                <div class="layui-input-inline">
                    <input id="user_password" type="password" name="user_password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-mid layui-word-aux">辅助文字</div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">确认密码框</label>
                <div class="layui-input-inline">
                    <input id="nPassword" type="password" name="nPassword" required lay-verify="required" placeholder="请再次输入密码" autocomplete="off" class="layui-input" onblur="npassNull()">
                </div>
                <div class="layui-form-mid layui-word-aux nPassword"></div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">性别</label>
                <div class="layui-input-block">
                    <input type="radio" name="user_sex" value="男" title="男">
                    <input type="radio" name="user_sex" value="女" title="女" checked>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">学历</label>
                <div class="layui-input-inline">
                    <input type="text" name="user_education" required lay-verify="required" placeholder="请输入学历" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">职业</label>
                <div class="layui-input-inline">
                    <input type="text" name="user_occupation" required lay-verify="required" placeholder="请输入职业" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label" >手机号</label>
                <div class="layui-input-inline">
                    <input id="user_phone" type="text" name="user_phone" required lay-verify="required|phone|number" placeholder="请输入手机号" autocomplete="off" class="layui-input" onblur="uVerifiPhone()">
                </div>
                <div class="layui-form-mid layui-word-aux user_phone"></div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">Email</label>
                <div class="layui-input-inline">
                    <input type="text" name="user_email" required lay-verify="required|email" placeholder="请输入Email" autocomplete="off" class="layui-input ">
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button id="sub" class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
        <div class="regis">
            <a href="<%=request.getContextPath()%>/web/userJsp/login.jsp" class="r_a"> >>>>登录</a>
        </div>
    </div>
</div>
<script charset="UTF-8" src="<%=request.getContextPath()%>/web/staticFile/jquery-3.5.1.js"></script>
<script src="<%=request.getContextPath()%>/web/X-admin/lib/layui/layui.js" charset="utf-8"></script>

<script charset="UTF-8" src="<%=request.getContextPath()%>/web/userJS/regis.js"></script>

<script>
    layui.use('form', function(){
        var form = layui.form;

        //监听提交
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            var path = $("#path").val();
            var Jsondata=JSON.stringify(data.field);

            $.ajax({
                url:path+"/userServlet?methodName=regis",
                async:true,
                type:"post",
                data:"Jsondata="+Jsondata,
                dataType:"text",

                before:function(){
                    $("#sub").attr("disabled",true);
                },

                success:function (msg) {

                    if(msg==="success"){
                        layer.msg("注册成功");
                        // location.href=path+"/userServlet?methodName=mainPage"

                    }else if(msg==="fail"){
                        layer.msg("注册失败");


                    }else if(msg==="failPhone"){
                        layer.msg("已经存在相同电话");
                    }else if(msg==="failAccount"){
                        layer.msg("已存在相同账号");
                    }
                    $("#sub").attr("disabled",false);
                },
                error:function () {

                    layer.msg("发送失败")
                }
            });
            return false;
        });
    });
    function uVerifi() {


        var uAccount=$("#user_account").val();
        if(uAccount.length>0){


            var path=$("#path").val();
            $.ajax({
                url:path+"/userServlet?methodName=uVerification",
                async:true,
                type:"post",
                data:"uAccount="+uAccount,
                dataType:"Text",
                success:function (msg) {

                    console.log(msg);
                    if(msg==="ok"){

                        // alert("账号可以使用")
                        $(".account").text("✔");

                    }else if(msg==="no"){
                        // alert("账号已被注册");
                        $(".account").text("x");

                    }
                }
            })
        }else {
            $(".account").text("x")
        }
    }
    function uVerifiPhone() {
        var user_phone=$("#user_phone").val();
        if(user_phone.length>0){
            var path=$("#path").val();
            $.ajax({
                url:path+"/userServlet?methodName=uVerifiPhone",
                async:true,
                type:"post",
                data:"user_phone="+user_phone,
                dataType:"Text",
                success:function (msg) {

                    console.log(msg);
                    if(msg==="ok"){

                        // alert("账号可以使用")
                        $(".user_phone").text("✔");

                    }else if(msg==="no"){
                        // alert("账号已被注册");
                        $(".user_phone").text("x");

                    }
                }
            })
        }else {
            $(".user_phone").text("x")
        }

    }
    function npassNull() {

        var uPassword=$("#user_password").val();
        var uPassword2=$("#nPassword").val();
        var reg = /^([a-zA-Z0-9]){6,16}$/i;
        if(reg.test(uPassword2)){
            if(uPassword===uPassword2){
                $(".nPassword").text("✔");
                return true;
            }else {
                $(".nPassword").text("x");
                return false;
            }

        }else{
            $(".nPassword").text("x");
            return false;
        }
    }
</script>

</body>
</html>

