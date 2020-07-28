<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/16
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ChinaZ</title>
    <link href='http://fonts.useso.com/css?family=Oxygen|Lato:300|Open+Sans:300' rel='stylesheet' type='text/css'>

    <link href="<%=request.getContextPath()%>/web/user/css/bootstrap.min.css" rel="stylesheet">

    <link href="<%=request.getContextPath()%>/web/user/style.css" rel="stylesheet">

    <link href="<%=request.getContextPath()%>/web/user/css/font-awesome.min.css" rel="stylesheet">

    <link href="<%=request.getContextPath()%>/web/user/css/animate-custom.css" rel="stylesheet">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/web/staticFile/layui-v2.5.6/css/layui.css" media="all">


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/web/user/js/jquery-1.8.3.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=request.getContextPath()%>/web/user/js/bootstrap.min.js"></script>

    <!-- Responsive menu -->

    <script src="<%=request.getContextPath()%>/web/user/js/modernizr.custom.js"></script>

    <script src="<%=request.getContextPath()%>/web/user/js/jquery.dlmenu.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/web/staticFile/layui-v2.5.6/layui.js"></script>
    <!-- jQuery (portfolio) -->
    <!--<script src="js/isotope.js"></script>
    <script src="js/fancybox.js"></script>-->

    <style>

        /* 元素 | http://localhost:8080/mavenProject/web/user/jsp/myMsg.jsp?title=&username=&date=&number=&password=&price_min=&price_max=&interest=1&quiz1=%E6%B5%99%E6%B1%9F&quiz2=&quiz3=&open=on&sex=%E7%94%B7# */

        div.container:nth-child(3) {
            margin-top: 50px;
        }

        /* 元素 | http://localhost:8080/mavenProject/userServlet?methodName=changeUserMsg */

        body > div:nth-child(7) {
            background-color: beige;
            position: fixed;
            top: 20%;
            left: 40%;
        }


        /* 元素 | http://localhost:8080/mavenProject/userServlet?methodName=changeUserMsg */

        body > div:nth-child(7) > div:nth-child(1) {
            /* margin-top: 5px; */
            margin-top: 100px;
            margin-left: 30px;
        }

        /* 元素 | http://localhost:8080/mavenProject/userControl/changeUserMsg */

        .layui-form {
            margin-top: 50px;
        }


    </style>
</head>

<body>
<input id="path" value="<%=request.getContextPath()%>" type="hidden">

<div class="container">
    <div class="header pull-left">

        <a href="<%=request.getContextPath()%>/userServlet?methodName=main" class="logo"><img
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
                    <li class="active" id="fileInfo"><a
                            href="<%=request.getContextPath()%>/userControl/searchFile">文件搜索</a></li>
                </ul>

            </div><!-- /.navbar-collapse -->
        </nav>


    </div>
</div>

<div class="blog">


    <div class="container">


        <div class="blog-header pull-left">
            <div class="ribbon-stitches-bottom"></div>
            <h1>我的信息</h1>
            <div class="ribbon-stitches-bottom"></div>
        </div>

    </div>
</div><!--blog-->


<div class="container">

    <form class="layui-form layui-form-pane" action="">
        <div class="layui-form-item">
            <label class="layui-form-label">用户名</label>
            <div class="layui-input-block">
                <input name="userName" class="layui-input" type="text" placeholder="${user.userName}"
                       autocomplete="off">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">账号</label>
            <div class="layui-input-inline">
                <input name="userAccount" readonly="readonly" class="layui-input" type="text"
                       placeholder="${user.userAccount}" autocomplete="off" lay-verify="">
            </div>
        </div>

        <div class="layui-form-item">

            <div class="layui-inline">
                <label class="layui-form-label">学历</label>
                <div class="layui-input-inline">
                    <input name="userEducation" class="layui-input" type="text" placeholder="${user.userEducation}"
                           autocomplete="off">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">手机号</label>
            <div class="layui-input-inline">
                <input name="userPhone" readonly="readonly" class="layui-input" type="text"
                       placeholder="${user.userPhone}" autocomplete="off" lay-verify="phone|number">
            </div>
            <%--            <div class="layui-form-mid layui-word-aux">请务必填写用户名</div>--%>
            <div class="layui-inline">
                <label class="layui-form-label">职业</label>
                <div class="layui-input-inline">
                    <input name="userOccupation" class="layui-input" type="text" placeholder="${user.userOccupation}"
                           autocomplete="off">
                </div>
            </div>
        </div>


        <div class="layui-form-item" pane="">
            <label class="layui-form-label">单选框</label>
            <div class="layui-input-block">
                <input name="sex" title="男" type="radio"
                       <c:if test="${user.userSex eq '男'}">checked=""</c:if> value="男">
                <input name="sex" title="女" type="radio"
                       <c:if test="${user.userSex eq '女'}">checked=""</c:if> value="女">
                <input name="sex" title="禁用" disabled="" type="radio" value="禁">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">E—mail</label>
            <div class="layui-input-block">
                <input name="userEmail" class="layui-input" type="text" placeholder="${user.userEmail}"
                       autocomplete="off" lay-verify="email">
            </div>
        </div>
        <div class="layui-form-item">

            <label class="layui-form-label">修改密码</label>
            <div class="layui-input-inline">
                <input name="password" class="layui-input" type="password" placeholder="*******" autocomplete="off">
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">个性签名</label>
            <div class="layui-input-block">
                <textarea class="layui-textarea" placeholder="请输入内容"></textarea>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button id="sub" class="layui-btn" lay-submit lay-filter="demo1">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>

</div><!-- End container -->


<div class="skill">

    <div class="container">
        <h1>Our Skill</h1>

        <div class="row">

            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                <div class="skill-item">
                    <h3>Branding</h3>

                    <div class="progress progress-skill">
                        <div class="progress-bar skill-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0"
                             aria-valuemax="100" style="width: 60%;">
                            <span class="sr-only">60% Complete</span>
                        </div>
                    </div>

                    <ul class="skill-levels center">
                        <li>6</li>
                        <li>0</li>
                        <li>%</li>
                    </ul>

                </div>
            </div>

            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                <div class="skill-item">
                    <h3>Graphic Design</h3>

                    <div class="progress progress-skill">
                        <div class="progress-bar skill-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0"
                             aria-valuemax="100" style="width: 80%;">
                            <span class="sr-only">60% Complete</span>
                        </div>
                    </div>

                    <ul class="skill-levels center">
                        <li>8</li>
                        <li>0</li>
                        <li>%</li>
                    </ul>

                </div>

            </div>

            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                <div class="skill-item">
                    <h3>iOS Development</h3>

                    <div class="progress progress-skill">
                        <div class="progress-bar skill-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0"
                             aria-valuemax="100" style="width: 60%;">
                            <span class="sr-only">60% Complete</span>
                        </div>
                    </div>

                    <ul class="skill-levels center">
                        <li>6</li>
                        <li>0</li>
                        <li>%</li>
                    </ul>

                </div>

            </div>

            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                <div class="skill-item">
                    <h3>Development</h3>

                    <div class="progress progress-skill">
                        <div class="progress-bar skill-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0"
                             aria-valuemax="100" style="width: 90%;">
                            <span class="sr-only">60% Complete</span>
                        </div>
                    </div>

                    <ul class="skill-levels center">
                        <li>9</li>
                        <li>0</li>
                        <li>%</li>
                    </ul>

                </div>

            </div>

        </div>

    </div>

</div>


<div class="footer">

    <div class="container">

        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                <div class="address">
                    <h3>Get in touch</h3>

                    <ul>
                        <li><a href="#">E: support@brightlight.com.bd</a></li>
                        <li><a href="#">P: 0418 281 810</a></li>
                        <li><a href="#">W: www.brightlight.com.bd</a></li>
                    </ul>

                </div>
            </div>

            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                <div class="address">
                    <h3>Our Location</h3>

                    <ul>
                        <li>Bright Light</li>
                        <li>1No. Rode Chandgaon Abashik</li>
                        <li>Chittagong Bangladesh</li>
                    </ul>

                </div>
            </div>

            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                <div class="address">
                    <h3>Free Support</h3>

                    <ul>
                        <li>Call Now</li>
                        <li><a href="#">00800 515151</a></li>
                    </ul>

                </div>
            </div>
        </div>

    </div>

</div><!-- End footer -->
<div id="verifyPass" style="width: 400px;height: 400px; background-color: beige; position: fixed;top: 20%;left: 40%;" hidden>
    <label id="exit" style="font-size: 30px;margin-left: 20px;margin-top: 20px;cursor: pointer " onclick="exit()">
        X</label>
    <div class="layui-form-item">

        <div class="layui-inline" style="margin-top: 100px; margin-left: 30px;">
            <label class="layui-form-label">密码:</label>
            <div class="layui-input-inline">
                <input id="pass" name="userPassword" class="layui-input" type="text" placeholder="输入密码"
                       autocomplete="off">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block">
                <button id="subb" class="layui-btn" lay-submit lay-filter="demo2">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>

    </div>
</div>
<script type="text/javascript">
    $(function () {

        $('#dl-menu').dlmenu();


        $('.dropdown').hover(function () {
                $(this).find('.dropdown-menu').addClass('animated bounceIn');
            },
            function () {
                $(this).find('.dropdown-menu').removeClass('animated bounceIn');
            });


        $('.services').hover(function () {
                $(this).find('.services-box-1').addClass('animated fadeInLeft');
            },
            function () {
                $(this).find('.services-box-1').removeClass('animated fadeInLeft');
            });

        $('.services').hover(function () {
                $(this).find('.services-box-2').addClass('animated fadeInRight');
            },
            function () {
                $(this).find('.services-box-2').removeClass('animated fadeInRight');
            });


        // Portfolio


        var $container = $('.portfolioContainer');
        $container.isotope({
            filter: '*',
            animationOptions: {
                duration: 750,
                easing: 'linear',
                queue: false
            }
        });

        $('.portfolioFilter a').click(function () {
            $('.portfolioFilter .current').removeClass('current');
            $(this).addClass('current');

            var selector = $(this).attr('data-filter');
            $container.isotope({
                filter: selector,
                animationOptions: {
                    duration: 750,
                    easing: 'linear',
                    queue: false
                }
            });
            return false;
        });

        $("a#example7").fancybox({
            'titlePosition': 'inside'
        });

        $("a[rel=example_group]").fancybox({
            'transitionIn': 'none',
            'transitionOut': 'none',
            'titlePosition': 'over',
            'titleFormat': function (title, currentArray, currentIndex, currentOpts) {
                return '<span id="fancybox-title-over">Image ' + (currentIndex + 1) + ' / ' + currentArray.length + (title.length ? ' &nbsp; ' + title : '') + '</span>';
            }
        });


        function DropDown(el) {
            this.dd = el;
            this.placeholder = this.dd.children('span');
            this.opts = this.dd.find('ul.dropdown-select > li');
            this.val = '';
            this.index = -1;
            this.initEvents();
        }

        DropDown.prototype = {
            initEvents: function () {
                var obj = this;

                obj.dd.on('click', function (event) {
                    $(this).toggleClass('active');
                    return false;
                });

                obj.opts.on('click', function () {
                    var opt = $(this);
                    obj.val = opt.text();
                    obj.index = opt.index();
                    obj.placeholder.text('Gender: ' + obj.val);
                });
            },
            getValue: function () {
                return this.val;
            },
            getIndex: function () {
                return this.index;
            }
        }

        $(function () {

            var dd = new DropDown($('#dd'));

            $(document).click(function () {
                // all dropdowns
                $('.wrapper-dropdown-1').removeClass('active');
            });

        });

        //end Portfolio


    });
</script>

<script>
    layui.use(['form', 'layedit', 'laydate'], function () {
        var form = layui.form
            , layer = layui.layer
            , layedit = layui.layedit
            , laydate = layui.laydate;
        var b = false;
        var path = $('#path').val();

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');

        //自定义验证规则
        form.verify({
            title: function (value) {
                if (value.length < 5) {
                    return '标题至少得5个字符啊';
                }
            }
            , pass: [
                /^[\S]{6,12}$/
                , '密码必须6到12位，且不能出现空格'
            ]
            , content: function (value) {
                layedit.sync(editIndex);
            }
            , phone: [/(^$)|^1\d{10}$/, '请输入正确的手机号']
            , email: [/(^$)|^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/, '邮箱格式不正确'],
            url: [/(^#)|(^http(s*):\/\/[^\s]+\.[^\s]+)/, "链接格式不正确"],
            number: [/(^$)|^\d+$/, '只能填写数字']

        });

        //监听指定开关
        form.on('switch(switchTest)', function (data) {
            layer.msg('开关checked：' + (this.checked ? 'true' : 'false'), {
                offset: '6px'
            });
            layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
        });

        //监听提交
        form.on('submit(demo1)', function (data) {

            var Jsondata = JSON.stringify(data.field);
            layer.msg("4555566666");
            $.ajax({
                url: path + "/userControl/changeMsg",
                async: true,
                type: "post",
                data: "Jsondata=" + Jsondata,
                dataType: "text",
                before: function () {
                    $("#sub").attr("disabled", true);
                },
                success: function (msg) {

                    if (msg === "success") {
                        layer.msg("修改成功");
                        // location.href=path+"/userServlet?methodName=mainPage"


                        $("#sub").attr("disabled", false);
                    } else if (msg === "fail") {
                        layer.msg("修改失败");
                    }
                },
                error: function () {

                    layer.msg("发送失败")
                }

            });
            return false;
        });

//提交确认密码

        $('#subb').click(function () {

            $.ajax({
                url: path + "/userControl/verifyPass",
                async: true,
                type: "post",
                data: "pass=" + $('#pass').val(),
                dataType: "text",
                before: function () {
                    $("#subb").attr("disabled", true);
                },
                success: function (msg) {

                    if (msg === "success") {
                        layer.msg("修改成功");
                        // location.href=path+"/userServlet?methodName=mainPage"

                        setTimeout($('#verifyPass').hide(), 1000);
                        b = true;

                        return true;
                    } else if (msg === "fail") {
                        layer.msg("修改失败");
                        return false;
                    }
                },
                error: function () {

                    layer.msg("发送失败");

                }

            });
            return false;
        });

        //表单赋值
        layui.$('#LAY-component-form-setval').on('click', function () {
            form.val('example', {
                "username": "贤心" // "name": "value"
                , "password": "123456"
                , "interest": 1
                , "like[write]": true //复选框选中状态
                , "close": true //开关状态
                , "sex": "女"
                , "desc": "我爱 layui"
            });
        });

        //表单取值
        layui.$('#LAY-component-form-getval').on('click', function () {
            var data = form.val('example');
            alert(JSON.stringify(data));
        });

    });

    function exit() {
        $('#verifyPass').hide();
    }

</script>


</body>
</html>
