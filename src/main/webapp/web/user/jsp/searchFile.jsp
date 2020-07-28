<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/19
  Time: 9:23
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
    <script type="text/javascript" src="<%=request.getContextPath()%>/web/staticFile/layui-v2.5.6/layui.js"></script>

    <!-- jQuery (portfolio) -->
    <script src="<%=request.getContextPath()%>/web/user/js/isotope.js"></script>
    <script src="<%=request.getContextPath()%>/web/user/js/fancybox.js"></script>


    <!-- Responsive menu -->

    <script src="<%=request.getContextPath()%>/web/user/js/modernizr.custom.js"></script>

    <script src="<%=request.getContextPath()%>/web/user/js/jquery.dlmenu.js"></script>
    <style>

        /* 元素 | http://localhost:8080/mavenProject/web/user/jsp/searchFile.jsp */

        div.row {
            margin-top: 30px;
        }

        /* 元素 | http://localhost:8080/mavenProject/userControl/searchFile */

        div.row > span {
            display: inline-block;
            margin-left: 50px;
            margin-right: 50px;
            max-width: 300px;

            background-color: #7fcca8;
        }

        /* 元素 | http://localhost:8080/mavenProject/userControl/searchFile */

        .wrapper-demo > input:nth-child(2) {
            /* margin-left: 5px; */
            margin-left: 800px;
        }


    </style>

</head>

<body>

<input type="hidden" id="path" value="<%=request.getContextPath()%>">

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
            <h1>Portfolio</h1>
            <div class="ribbon-stitches-bottom"></div>


            <section class="main">
                <div class="wrapper-demo">
                    <div id="dd" class="wrapper-dropdown-1" tabindex="1">
                        <span>选择文件类型</span>
                        <ul class="dropdown-select portfolioFilter" tabindex="1">
                            <li><a href="#" data-filter="*" class="current">All Categories</a></li>
                            <li><a href="#" data-filter=".people">People</a></li>
                            <li><a href="#" data-filter=".places">Places</a></li>
                            <li><a href="#" data-filter=".food">Food</a></li>
                            <li><a href="#" data-filter=".objects">Objects</a></li>
                        </ul>
                    </div>
                    <input id="fileName" type="text" class="input-lg" placeholder="查找文件">
                    <button class="layui-btn layui-btn-normal layui-btn-radius" type="button" onclick="searchFile()">
                        查找
                    </button>
                    ​
                </div>
            </section>

        </div>

    </div>

</div><!--blog-->

<div class="container">

    <div class="row center" style="margin-top: 10px">
        <div class="col-md-2">

        </div>
        <div class="col-md-3">
            <button class="layui-btn" type="button" id="lastPage"><i class="layui-icon"></i></button>

        </div>
        <div class="col-md-4">
            <%--            <div id="demo10"></div>--%>
            <div>
                总页数：
                <input class="layui-btn" type="button" id="totalPage">
                当前页：
                <input class="layui-btn" type="button" id="page">
            </div>
        </div>
        <div class="col-md-3">

            <button class="layui-btn" type="button" id="nextPage"><i class="layui-icon"></i></button>

        </div>
        <div class="col-md-2">

        </div>
    </div>

</div>

<div class="container">

    <div id="file" class="portfolio-container layui-collapse" lay-filter="test">

        <div class="row" style="background-color: #00CCCC">
            <h3>文件名</h3>
            <hr>
            <div>
                <label>标题 &nbsp;</label><br>

                <span>内容 &nbsp;</span>
            </div>
            <span>积分:50</span> <span>上传时间</span><span>下载次数</span>
            <button class="layui-btn  layui-btn-sm" type="button"><i class="layui-icon">下载</i></button>
        </div>

        <div class="row" style="background-color: #00CCCC">
            <h3>文件名</h3>
            <hr>
            <div>
                <label>标题 &nbsp;</label><br>
                <hr>
                <span>内容 &nbsp;</span>
            </div>
            <span>积分:50</span> <span>上传时间</span><span>下载次数</span>
            <button class="layui-btn  layui-btn-sm" type="button"><i class="layui-icon">下载</i></button>
        </div>
        <div class="row" style="background-color: #00CCCC">
            <h3>文件名</h3>
            <hr>
            <div>
                <label>标题 &nbsp;</label><br>
                <span>内容 &nbsp;</span>
            </div>
            <span>积分:50</span> <span>上传时间</span><span>下载次数</span>
            <button class="layui-btn  layui-btn-sm" type="button"><i class="layui-icon">下载</i></button>
        </div>
        <div class="row" style="background-color: #00CCCC">
            <h3>文件名</h3>
            <hr>
            <div>
                <label>标题 &nbsp;</label><br>
                <span>内容 &nbsp;</span>
            </div>
            <span>积分:50</span> <span>上传时间</span><span>下载次数</span>
            <button class="layui-btn  layui-btn-sm" type="button"><i class="layui-icon">下载</i></button>
        </div>


    </div><!--portfolio-container-->

</div><!-- End container -->

<div class="layui-collapse" lay-filter="test">
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">为什么JS社区大量采用未发布或者未广泛支持的语言特性？</h2>
        <div class="layui-colla-content">
            <p>
                有不少其他答案说是因为JS太差。我下面的答案已经说了，这不是根本性的原因。但除此之外，我还要纠正一些对JS具体问题的误解。JS当初是被作为脚本语言设计的，所以某些问题并不是JS设计得差或者是JS设计者的失误。比如var的作用域问题，并不是“错误”，而是当时绝大部分脚本语言都是这样的，如perl/php/sh等。模块的问题也是，脚本语言几乎都没有模块/命名空间功能。弱类型、for-in之类的问题也是，只不过现在用那些老的脚本语言的人比较少，所以很多人都误以为是JS才有的坑。另外有人说JS是半残语言，满足不了开发需求，1999年就该死。半残这个嘛，就夸张了。JS虽然有很多问题，但是设计总体还是优秀的。——来自知乎@贺师俊</p>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">为什么前端工程师多不愿意用 Bootstrap 框架？</h2>
        <div class="layui-colla-content">
            <p>
                因为不适合。如果希望开发长期的项目或者制作产品类网站，那么就需要实现特定的设计，为了在维护项目中可以方便地按设计师要求快速修改样式，肯定会逐步编写出各种业务组件、工具类，相当于为项目自行开发一套框架。——来自知乎@Kayo</p>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">layui 更适合哪些开发者？</h2>
        <div class="layui-colla-content">
            <p>在前端技术快速变革的今天，layui 仍然坚持语义化的组织模式，甚至于模块理念都是采用类AMD组织形式，并非是有意与时代背道而驰。layui
                认为以jQuery为核心的开发方式还没有到完全消亡的时候，而早期市面上基于jQuery的UI都普通做得差强人意，所以需要有一个新的UI去重新为这一领域注入活力，并采用一些更科学的架构方式。
                <br><br>
                因此准确地说，layui 更多是面向那些追求开发简单的前端工程师们，以及所有层次的服务端程序员。</p>
        </div>
    </div>
    <div class="layui-colla-item">
        <h2 class="layui-colla-title">贤心是男是女？</h2>
        <div class="layui-colla-content">
            <p>man！ 所以这个问题不要再出现了。。。</p>
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


<script type="text/javascript">
    $(function () {


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

        $('#dl-menu').dlmenu();

    });
    $(function () {


        $("#fileInfo").click(function () {
            $("#file").children().remove();
            var path = $("#path").val();
            console.log("path==" + path);
            console.log("发送文件列表");
            var page = $("#page").val();
            var fileName = $('#fileName').val();
            if (page != null && page !== "") {

                console.log("1111111")
            } else {

                page = $('#page').val(1);
                console.log("2222222");
                page = 1;
            }
            console.log("page=" + $('#page').val());

            var limit = 10;
            $.ajax({
                url: path + "/userControl/searchFileInfo",
                async: true,
                data: {"page": page, "limit": limit, "fileName": fileName},
                dataType: "json",
                success: function (msg) {

                    console.log("msg===" + JSON.stringify(msg));
                    var files = JSON.stringify(msg);
                    console.log("files=" + msg.data[0].fileContent);
                    console.log("files=" + msg.count);
                    $(msg.data).each(function (i) {
                        $("#file").append("<div class=\"layui-colla-item row\" style='background-color: #7fcca8;'>\n" +
                            "            <h2 class=\"layui-colla-title\">文件名: &nbsp;" + msg.data[i].fileName + "</h2>\n" +
                            "            \n" +
                            "            <div class=\"layui-colla-content layui-show layui-card-body\" style=' background-color: whitesmoke;'>\n" +
                            "         <label>标题: &nbsp;" + msg.data[i].fileTitle + "</label><br>\n" +
                            "                <p>内容: &nbsp;" + msg.data[i].fileContent + "</p> \n" +
                            "            </div>" +
                            " <br>\n" + " <div class=\"layui-row\">  " +
                            " <div class=\"layui-col-xs2\">  <span>积分:" + msg.data[i].fileIntegral + "</span> </div>" +
                            " <div class=\"layui-col-xs2\">  <span>上传人:" + msg.data[i].userAccount + "</span> </div>" +

                            " <div class=\"layui-col-xs2\">  <span>文件大小:" + msg.data[i].fileLeagth + "</span></div>" +
                            "<div class=\"layui-col-xs2\">   <span>上传时间: &nbsp;" + msg.data[i].fileCreateDate + "</span> </div>" +
                            "<div class=\"layui-col-xs2\">   <span>下载次数:" + msg.data[i].fileDownloadCount + "</span></div>\n" +
                            " <div class=\"layui-col-xs2\">     <button value='" + msg.data[i].fileId + "' class=\"layui-btn  layui-btn-sm\" type=\"button\"><i class=\"layui-icon\">下载</i></button> </div>\n" +
                            "        </div></div>");

                    });
                    $(".row").hide();


                    yy();

                    if (msg.count % limit > 0) {
                        var totalPage = parseInt(msg.count / limit) + 1;

                        console.log(totalPage)
                    } else {
                        var totalPage = msg.count / limit;
                    }
                    console.log("totalPage=" + totalPage);
                    $('#totalPage').val(totalPage);
                }
            })


        });

        $("#fileInfo").trigger("click");

        $('#lastPage').click(function () {
            // var lastPage =[$('#page').val() === 1 ? 1 :$('#page').val(($('#page').val()+1))] ;

            // console.log("lastPage="+lastPage+"    page="+$('#page').val());
            // console.log("lastPage=="+$('#lastPage').val(lastPage))
            var page = $('#page').val();
            console.log("page=" + page);
            var lp = $('#lastPage').val();
            if (page == 1) {
                lp = 1;
            } else {
                lp = parseInt(page) - 1;
            }
            console.log("lp=" + lp.toString());
            $('#page').val(lp);
            $("#file").children().remove();
            $("#fileInfo").trigger("click");
        });
        $('#nextPage').click(function () {
            // var nextPage =[$('#page').val() === $('#totalPage').val() ? 1 : $('#page').val($('#page').val()-1)] ;
            // console.log("nextPage="+nextPage+"    page="+$('#page').val());
            // console.log("nextPage=="+$('#nextPage').val(nextPage))
            var page = $('#page').val();
            console.log("page=" + page);
            console.log("totalPage=" + $('#totalPage').val());
            var np = $('#nextPage').val();
            if (page == $('#totalPage').val()) {
                np = $('#totalPage').val();
            } else {
                np = parseInt(page) + 1;
            }
            console.log("np=" + np);
            $('#page').val(np);
            $("#file").children().remove();
            $("#fileInfo").trigger("click");
        });
    });
    var a = 0;

    function yy() {
        if (a < 10) {
            a++;
            $(".row:hidden:first").fadeIn("1000");
            setTimeout("yy()", 500);
            if (a >= 10) {
                a = 0
            }

        }

    }

    function searchFile() {

        $("#fileInfo").trigger("click");

    }

</script>
<script>
    layui.use(['element', 'layer'], function () {
        var element = layui.element;
        var layer = layui.layer;

        //监听折叠
        element.on('collapse(test)', function (data) {
            layer.msg('展开状态：' + data.show);
        });
    });
</script>

</body>
</html>
