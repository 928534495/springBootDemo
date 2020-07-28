<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/7
  Time: 17:33
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
    <script src="<%=request.getContextPath()%>/web/X-admin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/web/X-admin/js/xadmin.js"></script>
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<input type="hidden" value="<%=request.getContextPath()%>" id="path">
<div class="x-nav">
            <span class="layui-breadcrumb">
                <a href="">首页</a>
                <a href="">演示</a>
                <a>
                    <cite>导航元素</cite></a>
            </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right"
       onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i>
    </a>
</div>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">
                    <%--                    <form class="layui-form layui-col-space5">--%>
                    <div class="layui-inline layui-show-xs-block">
                        <input class="layui-input" autocomplete="off" placeholder="开始日" name="start" id="start">
                    </div>
                    <div class="layui-inline layui-show-xs-block">
                        <input class="layui-input" autocomplete="off" placeholder="截止日" name="end" id="end"></div>
                    <div class="layui-inline layui-show-xs-block">
                        <input type="text" name="username" placeholder="请输入用户名" autocomplete="off"
                               class="layui-input"
                               id="userAccount">
                    </div>
                    <div class="layui-inline layui-show-xs-block">
                        <button class="layui-btn" id="search"><%--lay-submit="" lay-filter="search"--%>
                            <i class="layui-icon">&#xe615;</i></button>
                    </div>
                    <%--                    </form>--%>
                </div>
                <div class="layui-card-body ">
                    <table id="demo" class="layui-table"
                           lay-data="{url:'<%=request.getContextPath()%>/adminControl/listUser',page:true,toolbar: '#toolbarDemo',id:'test'}"
                           lay-filter="test">
                        <thead>
                        <tr>
                            <th lay-data="{type:'checkbox'}">ID</th>
                            <th lay-data="{field:'userId', width:80, sort: true}">ID</th>
                            <th lay-data="{field:'userName', width:120, sort: true, edit: 'text'}">用户名</th>
                            <th lay-data="{field:'userAccount', width:120, sort: true, edit: 'text'}">账号</th>
                            <th lay-data="{field:'userPassword', width:120, sort: true, edit: 'text'}">密码</th>
                            <th lay-data="{field:'userSex', width:80, sort: true, edit: 'text'}">性别</th>
                            <th lay-data="{field:'userEducation', width:120, sort: true, edit: 'text'}">职业</th>
                            <th lay-data="{field:'userOccupation', width:120, sort: true, edit: 'text'}">学历</th>
                            <th lay-data="{field:'userPhone', width:120, sort: true, edit: 'text'}">电话</th>
                            <th lay-data="{field:'userEmail', edit: 'text', minWidth: 150}">邮箱</th>
                            <th lay-data="{field:'parametersState', edit: 'text', minWidth: 100}">状态</th>
                            <th lay-data="{field:'userScore', sort: true, edit: 'text'}">积分</th>
                            <th lay-data="{field:'userCreateDate', width:120, sort: true, edit: 'text'}">创建时间</th>
                            <th lay-data="{field:'levelName',width:120, sort: true, edit: 'text'}">等级</th>
                            <th lay-data="{field:'levelScore',width:120, sort: true, edit: 'text'}">等级分数</th>
                            <th lay-data="{field:'userDownloadCount', width:120, sort: true, edit: 'text'}">下载次数</th>
                            <th lay-data="{field:'userUploadCount', width:120, sort: true, edit: 'text'}">上传次数</th>
                            <th lay-data="{fixed: 'right', title:'操作', toolbar: '#barDemo', width:150}">操作</th>

                        </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/html" id="toolbarDemo">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="getCheckData"> 获取选中行数据</button>
        <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
        <button class="layui-btn layui-btn-sm" lay-event="isAll"> 验证是否全选</button>
    </div>
</script>


<script id="barDemo" type="text/html">
    <a class="layui-btn layui-btn-xs" lay-event="disable">禁用</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="enable">启用</a>
</script>
<%--<script type="text/html" id="switchTpl">--%>
<%--    <!-- 这里的checked的状态只是演示 -->--%>
<%--        <input type="checkbox" name="userSex" value="{{d.userSex}}" lay-skin="switch" lay-text="女|男" lay-filter="userSex" {{ d.userSex==--%>
<%--               10003 ?'checked': ''}} >--%>
<%--</script>--%>
<script>layui.use('laydate',
    function () {
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素

        });

        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素

        });

    });</script>
<script>layui.use(['table', 'form', 'laytpl', 'layer'],
    function () {
        var table = layui.table
            , form = layui.form
            , laytpl = layui.laytpl;
        var path=$('#path').val();

        //监听单元格编辑
        table.on('edit(test)',
            function (obj) {
                var value = obj.value //得到修改后的值
                    ,
                    data = obj.data //得到所在行所有键值
                    ,
                    field = obj.field; //得到字段
                layer.msg('[ID: ' + data.id + '] ' + field + ' 字段更改为：' + value);
            });

        //头工具栏事件
        table.on('toolbar(test)',
            function (obj) {
                var checkStatus = table.checkStatus(obj.config.id);
                switch (obj.event) {
                    case 'getCheckData':
                        var data = checkStatus.data;
                        layer.alert(JSON.stringify(data));
                        break;
                    case 'getCheckLength':
                        var data = checkStatus.data;
                        layer.msg('选中了：' + data.length + ' 个');
                        break;
                    case 'isAll':
                        layer.msg(checkStatus.isAll ? '全选' : '未全选');
                        break;
                }
                ;
            });

        $('#search').click(function () {
            layer.msg("搜索中");
            table.reload('test', {
                where: { //设定异步数据接口的额外参数，任意设
                    startTime: $('#start').val()
                    , endTime: $('#end').val()
                    , userAccount: $('#userAccount').val()
                    //…
                }
                , page: {
                    curr: 1 //重新从第 1 页开始
                }
            });

        });
        //监听行工具事件
        table.on('tool(test)', function (obj) {
            var data = obj.data;
            console.log(obj);
            if (obj.event === 'disable') {

                layer.confirm("禁用？",function () {


                    $.ajax({
                        url: path + "/adminControl/userAudit",
                        type: 'post',
                        data: {"parametersState": data.parametersState, "userId": data.userId},
                        async: true,
                        dataType: 'text',
                        success: function (msg) {
                            if (msg === "success") {
                                layer.msg("success");
                                obj.update({
                                    parametersState: "禁用"
                                });
                            } else {
                                layer.msg("fail");
                            }
                        }
                    });
                })

            } else if (obj.event === 'enable') {

                layer.confirm('启用吗？',function () {

                    console.log("ffffffff");
                    $.ajax({
                        url: path + "/adminControl/userAudit",
                        type: 'post',
                        data: {"parametersState": data.parametersState, "userId": data.userId},
                        async: true,
                        dataType: 'text',
                        success: function (msg) {
                            if (msg === "success") {
                                layer.msg("success");
                                obj.update({
                                    parametersState: "启用"
                                });
                            } else {
                                layer.msg("fail");
                            }
                        }
                    });
                })
            }


        });


    });</script>


<%--<script>--%>
<%--    layui.use('table', function(){--%>
<%--        var path=$("#path");--%>
<%--        var table = layui.table;--%>

<%--        //第一个实例--%>
<%--        table.render({--%>
<%--            elem: '#demo'--%>
<%--            ,height: 312--%>
<%--            ,url: path+'/adminServlet?methodName=listUser' //数据接口--%>
<%--            ,page: true //开启分页--%>
<%--            ,cols: [[ //表头--%>
<%--                {field: 'id', title: 'ID', width:80, sort: true, fixed: 'left'}--%>
<%--                ,{field: 'username', title: '用户名', width:80}--%>
<%--                ,{field: 'sex', title: '性别', width:80, sort: true}--%>
<%--                ,{field: 'city', title: '城市', width:80}--%>
<%--                ,{field: 'sign', title: '签名', width: 177}--%>
<%--                ,{field: 'experience', title: '积分', width: 80, sort: true}--%>
<%--                ,{field: 'score', title: '评分', width: 80, sort: true}--%>
<%--                ,{field: 'classify', title: '职业', width: 80}--%>
<%--                ,{field: 'wealth', title: '财富', width: 135, sort: true}--%>
<%--            ]]--%>
<%--          --%>
<%--        });--%>

<%--    });--%>
<%--</script>--%>

</html>
