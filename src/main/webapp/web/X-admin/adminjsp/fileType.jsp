<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/12
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.2</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/web/X-admin/css/font.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/web/X-admin/css/xadmin.css">
    <script type="text/javascript" src="<%=request.getContextPath()%>/web/X-admin/lib/layui/layui.js"
            charset="utf-8"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/web/X-admin/js/xadmin.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <style>


        /* 元素 | http://localhost:8080/mavenProject/adminServlet?methodName=fileType */

        .layui-row > div:nth-child(4) {
            margin-top: 50px;
        }

        /* 元素 | http://localhost:8080/mavenProject/adminServlet?methodName=fileType */

        div.layui-inline:nth-child(1) {
            /* margin-top: 50\\; */
            /* margin-top: 5px; */
            margin-top: 20px;
        }

    </style>
</head>
<input type="hidden" value="<%=request.getContextPath()%>" id="path">
<body>
<div class="layui-fluid">
    <div class="layui-row">
        <div class="layui-form">

            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">
                    设置文件类型
                </label>
                <table class="layui-table layui-input-block">
                    <tbody>
                    <c:if test="${not empty fileTypeList}">

                        <tr>
                            <td>
                                <input type="checkbox" name="like1[write]" lay-skin="primary" lay-filter="father"
                                       title="已启用文件类型">
                            </td>
                            <td>
                                <div class="layui-input-block">
                                    <c:forEach var="i" items="${fileTypeList}">

                                        <c:if test="${i.typeState=='1'}">
                                            <button style="width: 80px" onclick="dele(this.value)" class="layui-btn layui-btn-normal"
                                                    value="${i.typeId}">${i.typeSuffix}</button>
                                        </c:if>
                                    </c:forEach>
                                </div>
                            </td>
                        </tr>

                    </c:if>
                    <c:if test="${not empty fileTypeList}">

                        <tr>
                            <td>
                                <input type="checkbox" name="like1[write]" lay-skin="primary" lay-filter="father"
                                       title="设置添加">
                            </td>
                            <td>
                                <div class="layui-input-block">
                                    <c:forEach var="i" items="${fileTypeList}">

                                        <input name="id[]" lay-skin="primary" type="checkbox" value="${i.typeId}"
                                               title="${i.typeSuffix}">
                                    </c:forEach>
                                </div>
                            </td>
                        </tr>

                    </c:if>

                    </tbody>
                </table>
            </div>

            <div class="layui-form-item">
                <button class="layui-btn" lay-submit="" lay-filter="add">增加</button>
            </div>
        </div>
        <hr>
        <label class="layui-form-label">
            设置会员等级
        </label>
        <div class="layui-form-item layui-form-text" style="background-color: ghostwhite">
            <table class="layui-table layui-input-block">
                <tbody>
                <c:if test="${not empty levels}">

                    <tr>
                        <td>
                            <span>修改等级</span>
                        </td>
                        <td>
                            <div class="layui-input-block">
                                <c:forEach var="i" items="${levels}">
                                    <button style="width: 150px" onclick="updateLevel(this.value)"
                                            class="layui-btn layui-btn-normal"
                                            value="${i.levelId}">${i.levelName}</button>
                                </c:forEach>
                            </div>
                        </td>
                    </tr>

                </c:if>
                <c:if test="${not empty levels}">

                    <tr>
                        <td>
                            <span>修改分数</span>
                        </td>
                        <td>
                            <div class="layui-input-block">
                                <c:forEach var="i" items="${levels}">

                                    <button style="width: 150px" onclick="updateScore(this.value)"
                                            class="layui-btn layui-btn-normal"
                                            value="${i.levelId}">${i.levelScore}</button>
                                </c:forEach>
                            </div>
                        </td>
                    </tr>

                </c:if>

                </tbody>
            </table>
        </div>
        <div class="layui-form-item">
            <button class="layui-btn" lay-submit="" lay-filter="add2">设置</button>
        </div>
    </div>
</div>

<div id="verifyPass" style="width: 400px;height: 400px; background-color: beige; position: fixed;top: 20%;left: 40%;" hidden>
    <label id="exit" style="font-size: 30px;margin-left: 20px;margin-top: 20px;cursor: pointer " onclick="exit()">
        X</label>
    <div class="layui-form-item">

        <div class="layui-inline" style="margin-top: 100px; margin-left: 30px;">
            <label class="layui-form-label">密码:</label>
            <div class="layui-input-inline">
                <input id="score" name="userPassword" class="layui-input" lay-verify="required|phone|number" type="text" placeholder="输入分数"
                       autocomplete="off">
            </div>
            <label id="nowScore"  class="layui-form-label"></label>
            <input id="nowId" type="hidden">
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button id="subb" class="layui-btn" lay-submit lay-filter="demo2" onclick="subb()">立即提交</button>

            </div>
        </div>

    </div>
</div>


<script>
    layui.use(['form', 'layer'], function () {
        $ = layui.jquery;
        var form = layui.form
            , layer = layui.layer;
        var path = $('#path').val();

        //监听提交
        form.on('submit(add)', function (data) {

            console.log(JSON.stringify(data.field));
            //发异步，把数据提交给php
            $.ajax({
                url: path + "/adminControl/typeAudit?type=add",
                type: 'post',
                data: {"typeId": JSON.stringify(data.field)},
                async: true,
                dataType: 'text',
                success: function (msg) {
                    if (msg === "success") {
                        layer.msg("更新成功")
                        location.href = path + "/adminControl/fileType";
                    } else if (msg === "fail") {
                        layer.msg("更新失败")
                    }
                }

            });

        });


        form.on('checkbox(father)', function (data) {

            if (data.elem.checked) {
                $(data.elem).parent().siblings('td').find('input').prop("checked", true);
                form.render();
            } else {
                $(data.elem).parent().siblings('td').find('input').prop("checked", false);
                form.render();
            }
        });


    });


</script>

<script>
    function dele(node) {

        console.log(node);
        var path = $('#path').val();

        layer.confirm("确认删除？？", function () {
            console.log("ggggg确认删除");
            $.ajax({
                url: path + "/adminControl/typeAudit?type=del",
                type: 'post',
                data: {"typeId": "del:" + node},
                async: true,
                dataType: 'text',
                success: function (msg) {
                    if (msg === "success") {
                        layer.msg("更新成功");
                        location.href = path + "/adminControl/fileType";
                    } else if (msg === "fail") {
                        layer.msg("更新失败")
                    }
                }

            });

        })
    }

    function updateLevel(node) {
        console.log(node);
        var path = $('#path').val();
        console.log(this);
        var levelName = prompt("修改等级");
        console.log("levelName=" + levelName);

        $.ajax({
            url: path + "/adminControl/updateLevel",
            type: 'post',
            data: {"levelName": levelName, "levelId": node},
            async: true,
            dataType: 'text',
            success: function (msg) {
                if (msg === "success") {
                    layer.msg("更新成功");
                    location.href = path + "/adminControl/fileType";
                } else if (msg === "fail") {
                    layer.msg("更新失败")
                }
            }
        })
    }
    function updateScore(node) {
        console.log(node);
        $('#verifyPass').show();
        //
        // $('#nowScore').text("当前分数="+node.text());
        $('#nowId').val(node);

    }
   function subb() {

       var path = $('#path').val();

       // var levelName = prompt("修改分数");
       // console.log("levelName=" + levelName);
       var score=$('#score').val();
       var levelId=$('#nowId').val();
console.log("score="+score);
       if(score!=null&&score!==""){
           $.ajax({
               url: path + "/adminControl/updateLevel",
               type: 'post',
               data: {"levelScore": score, "levelId": levelId},
               async: true,
               dataType: 'text',
               success: function (msg) {
                   if (msg === "success") {
                       layer.msg("更新成功");
                       location.href = path + "/adminControl/fileType";
                       // $('#verifyPass').hide();
                   } else if (msg === "fail") {
                       layer.msg("更新失败")
                   }
               }
           })
       }

   }

    function exit() {
        $('#verifyPass').hide();

    }

</script>

</body>

</html>