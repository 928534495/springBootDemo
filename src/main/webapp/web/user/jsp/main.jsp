<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/13
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户主页面</title>
    <%--    <link href='http://fonts.useso.com/css?family=Oxygen|Lato:300|Open+Sans:300' rel='stylesheet' type='text/css'>--%>

    <link href="<%=request.getContextPath()%>/web/user/css/bootstrap.min.css" rel="stylesheet">

    <link href="<%=request.getContextPath()%>/web/user/style.css" rel="stylesheet">

    <link href="<%=request.getContextPath()%>/web/user/css/animate-custom.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/web/staticFile/layui-v2.5.6/css/layui.css" media="all">


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/web/user/js/jquery-1.8.3.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="<%=request.getContextPath()%>/web/user/js/bootstrap.min.js"></script>

    <!-- jmpress plugin -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/web/user/js/jmpress.min.js"></script>
    <!-- jmslideshow plugin : extends the jmpress plugin -->
    <script type="text/javascript" src="<%=request.getContextPath()%>/web/user/js/jquery.jmslideshow.js"></script>


    <script type="text/javascript" src="<%=request.getContextPath()%>/web/user/js/jquery.bxslider.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/web/staticFile/layui-v2.5.6/layui.js"></script>

    <!-- Responsive menu -->

    <script src="<%=request.getContextPath()%>/web/user/js/modernizr.custom.js"></script>

    <script src="<%=request.getContextPath()%>/web/user/js/jquery.dlmenu.js"></script>
    <style>


        /* 元素 | http://localhost:8080/mavenProject/web/user/jsp/main.jsp */

        .als-item {
            /* margin-right: 10px; */
            margin-left: 10%;
            margin-top: 20px;

        }


    </style>

</head>

<body>

<input id="path" value="<%=request.getContextPath()%>" type="hidden">


<div class="container">
    <div class="header pull-left">

        <a href="<%=request.getContextPath()%>/userControl/main" class="logo"><img src="<%=request.getContextPath()%>/web/user/img/logo.png"
                                               alt="logo"/></a>

        <nav class="navbar navbar-default pull-right" role="navigation">

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="<%=request.getContextPath()%>/userControl/main">主页</a></li>
                    <li><a href="<%=request.getContextPath()%>/userControl/changeUserMsg">我的信息</a></li>
                    <li><a href="<%=request.getContextPath()%>/userControl/uploadFilePage">我要上传</a></li>
                    <li><a href="<%=request.getContextPath()%>/userControl/findIntegralPage">我的积分</a></li>
<%--                    <li><a href="portfolio.html">我要下载</a></li>--%>
                    <li><a href="<%=request.getContextPath()%>/userControl/searchFile">文件搜索</a></li>
                </ul>

            </div><!-- /.navbar-collapse -->
        </nav>

<%--        <div id="dl-menu" class="dl-menuwrapper pull-right">--%>
<%--            <button class="dl-trigger">Open Menu</button>--%>
<%--            <ul class="dl-menu">--%>
<%--                <li>--%>
<%--                    <a href="index.html">Home</a>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <a href="about.html">About Us</a>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <a href="blog.html">Blog</a>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <a href="portfolio.html">Portfolio</a>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <a href="#">Dropdown</a>--%>
<%--                    <ul class="dl-submenu">--%>
<%--                        <li><a href="#">Fine Jewelry</a></li>--%>
<%--                        <li><a href="#">Fashion Jewelry</a></li>--%>
<%--                        <li><a href="#">Watches</a></li>--%>
<%--                        <li>--%>
<%--                            <a href="#">Wedding Jewelry</a>--%>
<%--                            <ul class="dl-submenu">--%>
<%--                                <li><a href="#">Engagement Rings</a></li>--%>
<%--                                <li><a href="#">Bridal Sets</a></li>--%>
<%--                                <li><a href="#">Women's Wedding Bands</a></li>--%>
<%--                                <li><a href="#">Men's Wedding Bands</a></li>--%>
<%--                            </ul>--%>
<%--                        </li>--%>
<%--                    </ul>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <a href="team.html">Our Team</a>--%>
<%--                </li>--%>
<%--                <li>--%>
<%--                    <a href="contact.html">Contact</a>--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--        </div><!-- /dl-menuwrapper -->--%>


    </div>
</div>
<div class="slider-container pull-left">


    <section id="jms-slideshow" class="jms-slideshow">
        <div class="step" data-color="color-1" data-x="2000" data-y="1000" data-z="3000" data-rotate="-20">
            <div class="jms-content">
                <h3> Let's build something
                    beautiful together</h3>
                <a class="jms-link mbl" href="#"><img src="<%=request.getContextPath()%>/web/user/img/iphone.png"
                                                      alt="mbl"/></a>
            </div>
        </div>
        <div class="step" data-color="color-2" data-x="1000" data-z="2000" data-rotate="20">
            <div class="jms-content">
                <h3> Let's build something
                    beautiful together</h3>
                <a class="jms-link tab" href="#"><img src="<%=request.getContextPath()%>/web/user/img/ipad.png"
                                                      alt="tab"/></a>
            </div>
        </div>
        <div class="step" data-color="color-3" data-x="2000" data-y="1500" data-z="1000" data-rotate="20">
            <div class="jms-content">
                <h3> Let's build something
                    beautiful together</h3>
                <a class="jms-link pc" href="#"><img src="<%=request.getContextPath()%>/web/user/img/pc.png" alt="pc"/></a>
            </div>
        </div>
        <div class="step" data-color="color-4" data-x="3000" data-y="2000">
            <div class="jms-content">
                <h3>Let's build something
                    beautiful together</h3>
                <a class="jms-link laptop" href="#"><img src="<%=request.getContextPath()%>/web/user/img/leptop.png"
                                                         alt="leptop"/></a>
            </div>
        </div>
    </section>

</div>

<div class="container">

    <div class="services">
        <div class="services-header">
            <h2>选择文件内容</h2>
            <p>We understand your story is unique. That is why our micro-campaigns and solutions are individually
                crafted for each of our clients.</p>
        </div>


        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                <div class="services-box services-box-1">
                    <div class="row">
                        <div class="col-lg-3">
                            <img src="<%=request.getContextPath()%>/web/user/img/s-desktop.png" alt="s-desktop"/>
                        </div>
                        <div class="col-lg-9">
                            <div class="services-dtls">
                                <h2>Flat Design</h2>
                                <p>We create applications for web, iOS and Android platforms.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                <div class="services-box services-box-2 pull-right">
                    <div class="row">
                        <div class="col-lg-3">
                            <img src="<%=request.getContextPath()%>/web/user/img/colors.png" alt="s-desktop"/>
                        </div>
                        <div class="col-lg-9">
                            <div class="services-dtls">
                                <h2>Flat Design</h2>
                                <p>We create applications for web, iOS and Android platforms.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                <div class="services-box services-box-1">
                    <div class="row">
                        <div class="col-lg-3">
                            <img src="<%=request.getContextPath()%>/web/user/img/experience.png" alt="s-desktop"/>
                        </div>
                        <div class="col-lg-9">
                            <div class="services-dtls">
                                <h2>Flat Design</h2>
                                <p>We create applications for web, iOS and Android platforms.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                <div class="services-box services-box-2 pull-right">
                    <div class="row">
                        <div class="col-lg-3">
                            <img src="<%=request.getContextPath()%>/web/user/img/s-easy.png" alt="s-desktop"/>
                        </div>
                        <div class="col-lg-9">
                            <div class="services-dtls">
                                <h2>Flat Design</h2>
                                <p>We create applications for web, iOS and Android platforms.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div><!-- End services -->


</div><!-- End container -->

<%--<ul class="site-doc-icon site-doc-anim">--%>
<%--    <li>--%>
<%--        <div class="layui-anim" data-anim="layui-anim-fadein">渐现</div>--%>
<%--        <div class="code">layui-anim-fadein</div>--%>
<%--    </li>--%>
<%--    <li>--%>
<%--        <div class="layui-anim" data-anim="layui-anim-fadeout">渐隐</div>--%>
<%--        <div class="code">layui-anim-fadeout</div>--%>
<%--    </li>--%>
<%--    <li>--%>
<%--        <div class="layui-anim" data-anim="layui-anim-rotate">360度旋转</div>--%>
<%--        <div class="code">layui-anim-rotate</div>--%>
<%--    </li>--%>
<%--    <li>--%>
<%--        <div class="layui-anim" data-anim="layui-anim-rotate layui-anim-loop">循环动画</div>--%>
<%--        <div class="code">追加：layui-anim-loop</div>--%>
<%--    </li>--%>
<%--</ul>--%>


<div class="subscribe">

    <div class="container">
        <h1>搜索文件！NOW！！</h1>

        <form>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6 col-lg-offset-3 col-md-offset-3 col-sm-offset-2">
                    <input id="fileName" name="fileName" class="input-lg" type="text" placeholder="请输入文件名">
                </div>
                <div class="col-lg-2 col-md-2 col-sm-2">
                    <button class="btn-effect" type="button" onclick="searchFile()">Subscribe</button>
                </div>
            </div>
        </form>

    </div>

</div><!-- End subscribe -->

<div class="gellary">
    <h2 id="fileInfo" style="cursor: pointer ">用户文件</h2>

</div>
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

<div id="container">


    <ul class="gellary-content bxslider" id="file">


    </ul><!-- End gellary -->


</div><!-- End gellary -->


<div class="container">

    <div class="process">

        <h2>Process</h2>

        <div class="row">

            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                <div class="process-box">
                    <div class="process-img p-img-1"></div>

                    <h1>Brainstorm</h1>

                    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman -
                        and above it there hung a picture that he had recently cut out of an illustrated magazine and
                        housed in a nice, gilded frame. </p>

                </div>
            </div>

            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                <div class="process-box">
                    <div class="process-img p-img-2"></div>

                    <h1>Planning</h1>

                    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman -
                        and above it there hung a picture that he had recently cut out of an illustrated magazine and
                        housed in a nice, gilded frame. </p>

                </div>
            </div>

            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                <div class="process-box">
                    <div class="process-img p-img-3"></div>

                    <h1>Designing</h1>

                    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman -
                        and above it there hung a picture that he had recently cut out of an illustrated magazine and
                        housed in a nice, gilded frame. </p>

                </div>
            </div>

            <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                <div class="process-box">
                    <div class="process-img p-img-4"></div>

                    <h1>Deploy</h1>

                    <p>A collection of textile samples lay spread out on the table - Samsa was a travelling salesman -
                        and above it there hung a picture that he had recently cut out of an illustrated magazine and
                        housed in a nice, gilded frame. </p>

                </div>
            </div>

        </div>

    </div>

</div><!-- End process -->


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

        var jmpressOpts = {
            animation: {transitionDuration: '0.8s'}
        };


        $('#jms-slideshow').jmslideshow($.extend(true, {jmpressOpts: jmpressOpts}, {
            autoplay: true,
            bgColorSpeed: '0.8s',
            arrows: false
        }));


        $('.dropdown').hover(function () {
                $(this).find('.dropdown-menu').addClass('animated bounceIn');
            },
            function () {
                $(this).find('.dropdown-menu').removeClass('animated bounceIn');
            });


        //preloader and home animation starter
        $(window).load(function () {
            //$('#pre_loader_mask').hide().remove();
            //start home animation

            $('.services').hover(function () {
                $('.services-box-2').addClass('animated fadeInRight');
            });

            $('.services').hover(function () {
                $(this).find('.services-box-1').addClass('animated fadeInLeft');
            });

            $('.process').hover(function () {
                $(this).find('.process-box').addClass('animated bounceIn');
            });

            $('.subscribe').hover(function () {
                $(this).find('.input-lg').addClass('animated rotateInDownLeft');
                $(this).find('.btn-effect').addClass('animated rotateIn');
            });

            //collapse circular menu after 7 seceond
            // setTimeout(circularMenuConroll, 7000);
        });


        // $('.bxslider').bxSlider({
        //     // minSlides: 6,
        //     // maxSlides: 3,
        //     slideWidth: 500,
        //     slideMargin: 100
        // });


        $('#dl-menu').dlmenu();

        $(function () {


            $("#fileInfo").click(function () {
                $("#file").children().remove();
                var path = $("#path").val();
                console.log("path==" + path);
                console.log("发送文件列表");
                var page = $("#page").val();
                var  fileName=$('#fileName').val();
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
                    url: path + "/userControl/listFileInfo",
                    async: true,
                    data: {"page": page, "limit": limit,"fileName":fileName},
                    dataType: "json",
                    success: function (msg) {

                        console.log("msg===" + JSON.stringify(msg));
                        var files = JSON.stringify(msg);
                        console.log("files=" + msg.data[0].fileContent);
                        console.log("files=" + msg.count)
                        $(msg.data).each(function (i) {
                            $("#file").append("<li class=\"als-item \" style=\"float: left; list-style: outside none none; position: relative; width: 150px; margin-right: 10px;\">\n" +
                                "            <div class=\"gellary-item item layui-anim\"  data-anim=\"layui-anim-rotate\" >\n" +
                                // "                <a href=\"#\">\n" +
                                "                    <img src='<%=request.getContextPath()%>/web/user/img/gm.png' /> \n" +
                                "                    <div class=\"hover\"></div>\n" +
                                // "                </a>\n" +
                                "                <h3>" + msg.data[i].fileName + "</h3>\n" +
                                "<span>上传时间：" + msg.data[i].fileCreateDate + "</span><br><span>下载次数：" + msg.data[i].fileDownloadCount + "</span>\n" +
                                "<span>积分：" + msg.data[i].fileIntegral + "</span>" +

                                " <button onclick='dowloadFile(this)'  value='" + msg.data[i].fileId + "' class=\"layui-btn  layui-btn-sm\" type=\"button\"><i class=\"layui-icon\">下载</i></button>" +
                                "            </div> </li>");

                            // $(".item").fadeOut("slow");


                            //
                        });
                        $(".item").hide();

                        // for (var i = 0; msg.count > i; i++) {
                        //
                        //     setTimeout("yy()", 1000)
                        // }
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


    });
    var a = 0;

    function yy() {
        if (a < 10) {
            a++;
            $(".item:hidden:first").fadeIn("1000");
            setTimeout("yy()", 500);
            if(a>=10){a=0}

        }

    }
    function searchFile() {

        $("#fileInfo").trigger("click");

    }
    function dowloadFile(node) {

        console.log(node);
        console.log(node.value);
        var path = $("#path").val();

       $.ajax({
           url: path + "/userControl/dowload?fileId="+node.value,
           async: true,
           dataType: "text",
           before:function(){
               $(this).attr("disabled",true);
           },
           success:function (msg) {

                if(msg==="success"){
                    // layer.msg("正在下载");
                    var form = $("<form></form>");   //定义一个form表单
                    form.attr('style','display:none');   //下面为在form表单中添加查询参数
                    form.attr('target','');
                    form.attr('method','post');
                    form.attr('action',path +"/userControl/dowloadFile?fileId="+node.value);

                    // var input1 = $('<input>');
                    // input1.attr('type','hidden');
                    // input1.attr('name','exportPostTime');
                    // input1.attr('value',"timeString");

                    $('body').append(form);  //将表单放置在web中
                    // form.append(input1);   //将查询参数控件提交到表单上
                    form.submit();   //表单提交
                }else if(msg==="integral"){
                    alert("积分不足");
                }else{
                    alert("文件不存在");
                }

           },
           error:function () {

               alert("发送失败");
           },

       })
    }

</script>

<%--<script>--%>
<%--    layui.use(['laypage', 'layer'], function () {--%>
<%--        var laypage = layui.laypage--%>
<%--            , layer = layui.layer;--%>

<%--        laypage.render({--%>
<%--            elem: 'demo10'--%>
<%--            , count: 16--%>
<%--            , layout: ['page', 'count']--%>
<%--        });--%>
<%--    })--%>

<%--</script>--%>
</body>
</html>
