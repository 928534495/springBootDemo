<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="<%=request.getContextPath()%>/web/X-admin/lib/layui/css/modules/laydate/default/laydate.css">
<%--    <script src="<%=request.getContextPath()%>/web/X-admin/lib/layui/lay/modules/jquery.js" charset="utf-8"></script>--%>
    <script src="<%=request.getContextPath()%>/web/staticFile/jquery-3.5.1.js" charset="utf-8"></script>
    <script src="<%=request.getContextPath()%>/web/X-admin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/web/X-admin/js/xadmin.js"></script>
    <script src="<%=request.getContextPath()%>/web/staticFile/layui-v2.5.6/lay/modules/form.js" charset="utf-8"></script>
<%--    <script src="<%=request.getContextPath()%>/web/staticFile/layui-v2.5.6/layui.all.js" charset="utf-8"></script>--%>
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
                            <input type="text" name="fileName" placeholder="请输入用户名" autocomplete="off"
                                   class="layui-input"
                                   id="fileName">
                        </div>
    <div class="layui-inline layui-show-xs-block" >

    <select  id="fileType">
        <option>--请选择类型--</option>
        <c:forEach var="i" items="${fileList}">

            <option>${i.typeSuffix} </option>
        </c:forEach>
    </select>

    </div>

                        <div class="layui-inline layui-show-xs-block">
                            <button class="layui-btn"  id="search"><%--lay-submit="" lay-filter="search"--%>
                                <i class="layui-icon">&#xe615;</i></button>
                        </div>
<%--                    </form>--%>
                </div>
                <div class="layui-card-body ">
                    <table id="demo" class="layui-table"
                           lay-data="{url:'<%=request.getContextPath()%>/adminControl/listFileInfo',page:true,toolbar: '#toolbarDemo',id:'test'}"
                           lay-filter="test">
                        <thead>
                        <tr>
                            <th lay-data="{type:'checkbox'}">ID</th>
                            <th lay-data="{field:'fileId', width:30, sort: true}">ID</th>
                            <th lay-data="{field:'fileName', width:120, sort: true, edit: 'text'}">文件名</th>
                            <th lay-data="{field:'fileCreateDate', width:180, sort: true, edit: 'text'}">创建时间</th>
                            <th lay-data="{field:'fileLeagth', width:120, sort: true, edit: 'text'}">文件大小</th>
                            <th lay-data="{field:'userAccount', width:120, sort: true, edit: 'text'}">用户账号</th>
<%--                            <th lay-data="{field:'fileTitle', width:120, sort: true, edit: 'text'}">标题</th>--%>
<%--                            <th lay-data="{field:'fileContent', width:120, sort: true, edit: 'text'}">内容</th>--%>
                            <th lay-data="{field:'parametersState', width:120, sort: true, edit: 'text'}">状态</th>
                            <th lay-data="{field:'fileDownloadCount', edit: 'text', minWidth: 50}">下载次数</th>
                            <th lay-data="{field:'typeName', edit: 'text', minWidth: 100}">类型名称</th>
                            <th lay-data="{field:'typeSuffix', sort: true, edit: 'text'}">后缀</th>
                            <th lay-data="{fixed: 'right', width:250, align:'center', toolbar: '#barDemo'}">操作</th>
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
<script type="text/html" id="switchTpl">
    <!-- 这里的checked的状态只是演示 -->
    <%--    <input type="checkbox" name="sex" value="{{d.id}}" lay-skin="switch" lay-text="女|男" lay-filter="sexDemo" {{ d.id==--%>
    <%--           10003?'checked': ''}} >--%>
</script>
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
<script>
    layui.use('table',
    function () {
        var table = layui.table;
        var form = layui.form;
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
        table.on('tool(test)', function(obj){ //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"

            console.log("sdfsdf");
            // debugger
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            var tr = obj.tr; //获得当前行 tr 的 DOM 对象（如果有的话）

            if(layEvent === 'download'){ //查看
                //do somehing


            } else if(layEvent === 'pass'){ //审核
                // layer.confirm('确认通过？', function(index){
                    // obj.del(); //删除对应行（tr）的DOM结构，并更新缓存
                    // layer.close(index);
                    // //向服务端发送删除指令
                console.log("fileId="+data.fileId);
                $.ajax({
                    url:path+"/adminControl/fileAudit?condition=2",
                    type:'post',
                    data:{"fileId":data.fileId,"parametersState":data.parametersState},
                    async: true,
                    dataType:'text',
                    success:function (msg) {
                        if(msg==="success"){
                            layer.msg("success");
                            obj.update({
                                parametersState: "审核通过"
                            });
                        }else{
                            layer.msg("fail");
                        }

                    }
                });


            } else if(layEvent === 'noPass'){ //审核
                //do something

                $.ajax({
                    url:path+"/adminControl/fileAudit?condition=3",
                    type:'post',
                    data:{"fileId":data.fileId,"parametersState":data.parametersState},
                    async: true,
                    dataType:'text',
                    success:function (msg) {
                        if(msg==="success"){
                            layer.msg("success");
                            obj.update({
                                parametersState: "审核不通过"
                            });
                        }else{
                            layer.msg("fail");
                        }
                    }
                });


            } else if(layEvent === 'LAYTABLE_TIPS'){
                layer.alert('Hi，头部工具栏扩展的右侧图标。');
            }
        });

        $('#search').click(function () {
            // alert("c");*/
            console.log("fileType=="+$('#fileType').val());
            table.reload('test',{
                where: { //设定异步数据接口的额外参数，任意设
                    startTime:$('#start').val()
                    , endTime:$('#end').val()
                    ,fileName:$('#fileName').val()
                    ,fileType:$('#fileType').val()
                    //…
                }
                , page: {
                    curr: 1 //重新从第 1 页开始
                }
            });

        })


    });

    function selectType() {
        var path=$('#path').val();
        $.ajax({
            url:path+"/adminControl/type",
            type:'post',
            async: true,
            dataType:'json',
            success:function (msg) {
                if(msg==="success"){

                    console.log(msg);
                    console.log(msg[0]);
                    // $(msg).each(function (i) {
                    //     $("#selectType").append("<option value=" + msg[i].cid + ">" + msg[i].cname + "</option>")
                    // })
                    layer.msg("类型下载成功")

                }else if(msg==="fail"){
                    layer.msg("类型下载失败")
                }
            }

        });
    }

</script>

<script>


</script>

<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="download">下载</a>
    <a class="layui-btn layui-btn-xs" lay-event="pass">通过审核</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="noPass">不通过审核</a>

</script>



</html>
