<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html  class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>后台登录-X-admin2.2</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/web/X-admin/css/font.css" >
    <link rel="stylesheet" href="<%=request.getContextPath()%>/web/X-admin/css/login.css" >
    <link rel="stylesheet" href="<%=request.getContextPath()%>/web/X-admin/css/xadmin.css" >
    <script type="text/javascript" src="<%=request.getContextPath()%>/web/X-admin/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/web/X-admin/lib/layui/layui.js" charset="utf-8"></script>




</head>
<body class="login-bg">
<input id="path" value="<%=request.getContextPath()%>" type="hidden">

<div class="login layui-anim layui-anim-up">
    <div class="message">x-admin2.0-管理登录</div>
    <div id="darkbannerwrap"></div>

    <form method="post" class="layui-form" >
        <input name="adminName" placeholder="用户名"  type="text" lay-verify="required" class="layui-input" >
        <hr class="hr15">
        <input name="adminPassword" lay-verify="required" placeholder="密码"  type="password" class="layui-input">
        <hr class="hr15">
        <input id="btn" value="登录" lay-submit lay-filter="login" style="width:100%;" type="button">
        <hr class="hr20" >
    </form>
</div>

<script CHARSET="UTF-8">
    $(function  () {
        layui.use('form', function(){
            var form = layui.form;
            //监听提交
            form.on('submit(login)', function(data){
                // // alert(888)
                // layer.msg(JSON.stringify(data.field),function(){
                //     location.href='index.html'
                // });
                // return false;
                var path = $("#path").val();
                var Jsondata=JSON.stringify(data.field);
                console.log(data.field.adminName);
                console.log(data.field);
                $.ajax({
                    url:path + "/adminControl/login",
                    async: false,
                    type:"post",
                    // data:{"Jsondata":Jsondata},
                    data:"Jsondata="+Jsondata,
                    dataType: "text",
                    beforeSend: function () {
                        $("#btn").attr("disabled", true);

                    },
                    success: function (msg) {
                        $("#btn").attr("disabled", false);
                        if (msg === "success") {
                           console.log("sucess")
                            location.href = path+"/adminControl/getMenu";
                        }else{
                            alert("登录失败");
                        }

                    },
                    error: function () {

                        alert("发送失败")

                    }
                })


            });
        });
    })
</script>
<!-- 底部结束 -->

</body>
</html>