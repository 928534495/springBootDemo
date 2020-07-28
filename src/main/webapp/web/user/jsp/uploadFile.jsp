<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/20
  Time: 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文件上传</title>

    <link rel="stylesheet" href="<%=request.getContextPath()%>/web/staticFile/layui-v2.5.6/css/layui.css" media="all">
    <link href="<%=request.getContextPath()%>/web/user/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="<%=request.getContextPath()%>/web/staticFile/jquery-3.5.1.js"></script>
    <script src="<%=request.getContextPath()%>/web/user/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/web/staticFile/layui-v2.5.6/layui.js"></script>
</head>
<body>
<input id="path" value="<%=request.getContextPath()%>" type="hidden">
<div class="container">
    <div class="header pull-left">

        <a href="<%=request.getContextPath()%>/userControl/main" class="logo"><img
                src="<%=request.getContextPath()%>/web/user/img/logo.png" alt="logo"/></a>

        <nav class="navbar navbar-default pull-right" role="navigation">

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="<%=request.getContextPath()%>/userControl/main">主页</a></li>
                    <li><a href="<%=request.getContextPath()%>/userControl/changeUserMsg">我的信息</a></li>
                    <li><a href="<%=request.getContextPath()%>/userControl/uploadFilePage">我要上传</a></li>
                    <li><a href="<%=request.getContextPath()%>/userControl/findIntegralPage">我的积分</a></li>
                    <%--                    <li><a href="portfolio.html">我要下载</a></li>--%>
                    <li class="active" id="fileInfo">
                        <a href="<%=request.getContextPath()%>/userControl/searchFile">文件搜索</a></li>
                </ul>

            </div><!-- /.navbar-collapse -->
        </nav>


    </div>
</div>
<div class="container">

    <div class="layui-form" action="">
        <div class="layui-form-item">
            <label class="layui-form-label">文档标题：</label>
            <div class="layui-input-block">
                <input id="title" type="text" name="title" required lay-verify="required" placeholder="请输入标题"
                       autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">积分：</label>
            <div class="layui-input-block">
                <input id="integral" type="number" name="title" required lay-verify="required|number"
                       placeholder="请输入积分"
                       autocomplete="off"
                       class="layui-input">
            </div>
        </div>
        <c:if test="${not empty fileTypeList}">


            <div class="layui-form-item" pane>
                <label class="layui-form-label">可以上传类型</label>
                <div id="Suffix" class="layui-input-block">

                    <c:forEach var="i" items="${fileTypeList}">
                        <%--                    <input type="button" name="type" value="${i.typeId}" title="${i.typeSuffix}">${i.typeSuffix}--%>
                        <div class="layui-input-block"
                             style="font-size: 18px;padding-top: 15px;; text-align:center;float: left ;background-color: #00b4ae;width: 100px; height: 50px;margin-left:15px;margin-top: 20px">
                            <label class="fileType" value="${i.typeId}" title="${i.typeSuffix}">${i.typeSuffix}</label>
                        </div>

                    </c:forEach>
                </div>
            </div>
        </c:if>

        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">文档介绍:</label>
            <div class="layui-input-block">
                <textarea id="content" name="desc" placeholder="请输入内容" class="layui-textarea"></textarea>
            </div>
        </div>


    </div>
    <div class="container">
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
            <legend>请选择上传的文件类型</legend>
        </fieldset>

        <div class="layui-upload">
            <button class="layui-btn layui-btn-normal" id="test8" type="button">选择文件</button>
            <button class="layui-btn wordBtn hide" id="test9" type="button">开始上传</button>
            <button class="layui-btn " id="commit" type="button">开始上传</button>
        </div>
    </div>
</div>
</body>

<script>
    layui.use('upload', function () {
        var $ = layui.jquery
            , upload = layui.upload;

        var path = $("#path").val();
        var title = $("#title").val();
        var integral = $("#integral").val();
        var content = $("#content").val();


        var Suffix = "|";


        for (var i = 0; $("#Suffix").children().length > i; i++) {
            Suffix = Suffix + $("#Suffix .fileType").eq(i).text() + "|";
            console.log("Suffix==" + Suffix);
        }
        ;

        $("#commit").click(function () {


            title = $("#title").val();
            integral = $("#integral").val();
            content = $("#content").val();

            console.log("title=" + title);
            console.log("integral=" + integral);
            console.log("content=" + content);
            if (integral != null && integral !== "" && title != null && content != null && title !== "" && content !== "") {

                var v =new RegExp("^([0-9]|[1-9]\\d|100)$");/*0-100的整数*/

                if (v.test(integral)) {

                    if ($("div:has(span)").length > 0) {
                        layer.msg("正在提交");
                        $("#test9").click();
                    } else {
                        layer.msg("请选择文件");
                    }
                } else {
                    layer.msg("积分请输入0-100的整数");
                }


            } else {
                layer.msg("请填满内容");
            }
        });


        // var radios=document.getElementsByName("type");
        // var tag=false;
        // var type;
        // for(radio in radios){
        //     if(radios[radio].checked){
        //         tag=true;
        //         type=radios[radio].value;
        //         break;
        //     }
        //
        // }
        // if(tag){
        //     console.log(type)
        // }

        console.log(title + "  ggg  " + content);


        //选完文件后不自动上传
        upload.render({
            elem: '#test8'
            , url: path + '/userControl/uploadFile' //改成您自己的上传接口
            , auto: false
            //,multiple: true
            , bindAction: '#test9'
            , accept: "file"
            , exts: Suffix
            // ,accept: 'images' //只允许上传图片
            // ,acceptMime: 'image/*' //只筛选图片
            , data: {
                title: function () {
                    return $('#title').val();
                },
                integral: function () {
                    return $('#integral').val();
                },
                content: function () {
                    return $('#content').val();
                },

            }
            // ,before:function () {
            //     console.log("title="+title+"  ggg  "+content);
            //     return title != null && content != null&&title !==""&&content !=="" ;
            //
            // }
            , done: function (res) {
                console.log("res=" + res);
                layer.msg(res.msg);
                console.log(res)
            }
        });

    });


</script>
</html>
