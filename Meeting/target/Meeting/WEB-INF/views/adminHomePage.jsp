<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>管理员主页</title>
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bs-animation.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/countdown-timer1.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/customHomePageMid.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/homepagefoot.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/animate.min.css" />
</head>

<body>

<div class="features-boxed">
    <!-- 头部导航 -->
    <nav class="navbar navbar-light navbar-expand-md bg-danger navigation-clean">
        <div class="container">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/home"><strong>会议室预订管理系统</strong><br></a>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item" role="presentation"><a class="nav-link" href="#" id="ad_nav_name">管理员admin</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="${pageContext.request.contextPath}/home" data-bs-hover-animate="pulse" id="ad_quit">退出</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- 主要内容 -->
    <div class="container">
        <div class="intro"></div>
        <div class="row justify-content-center features" style="height:740px;margin-top:50px;">
            <div class="col-sm-6 col-md-5 col-lg-4 item">
                <div data-bs-hover-animate="pulse" class="box">
                    <i class="fa fa-meetup icon" style="color:rgb(220,53,69);"></i>
                    <h3 class="name">会议室管理</h3>
                    <p class="description">显示会议室列表、增加会议室、会议室修改等功能</p><a href="${pageContext.request.contextPath}/adminRoomManager" class="learn-more" style="color:rgb(220,53,69);">查看详情
                    »</a>
                </div>
                <div data-bs-hover-animate="pulse" class="box">
                    <i class="fa fa-stumbleupon-circle icon" style="color:rgb(154,154,154);"></i>
                    <h3 class="name">更多功能</h3>
                    <p class="description">&nbsp;敬请期待...</p>
                    <p class="description" style="margin:3px;">&nbsp;&nbsp;</p><a class="text-secondary learn-more" href="#" style="color:rgb(220,53,69);">查看详情
                    »</a>
                </div>
            </div>
            <div class="col-sm-6 col-md-5 col-lg-4 item">
                <div data-bs-hover-animate="pulse" class="box">
                    <i class="fa fa-odnoklassniki-square icon" style="color:rgb(220,53,69);"></i>
                    <h3 class="name">用户管理</h3>
                    <p class="description">进入用户管理界面、添加新用户、修改用户信息等功能</p><a href="${pageContext.request.contextPath}/adminUserManager" class="learn-more" style="color:rgb(220,53,69);">查看详情
                    »</a>
                </div>
            </div>

            <div class="col-sm-6 col-md-5 col-lg-4 item">
                <div data-bs-hover-animate="pulse" class="box">
                    <i class="fa fa-book icon" style="color:rgb(220,53,69);"></i>
                    <h3 class="name">会议室审批</h3>
                    <p class="description">进入会议室审批界面、同意或拒绝已发出的会议室使用申请等功能</p><a href="${pageContext.request.contextPath}/adminRoomApply" class="learn-more" style="color:rgb(220,53,69);">查看详情
                    »</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 尾部 -->
<div class="footer-dark" style="height:190px;padding:32px;">
    <footer>
        <div class="container">
            <div class="row" style="margin:-12px;">
                <div class="col-sm-6 col-md-3 item">
                    <h3 style="margin:12px;">About us</h3>
                    <ul>
                        <li></li>
                        <li><a href="#">Team 600</a></li>
                        <li></li>
                    </ul>
                </div>
                <div class="col-md-6 item text">
                    <h3 style="margin:12px;">About Project&nbsp;</h3>
                    <p style="padding:0px 10px 0px 10px;margin:-2px;font-size:14px;">&nbsp; 该会议室管理预定系统仅供学习与参考请勿商用。同时可能还存在很多不足，望联系我们指出并体谅。团队所有成员在此感谢您的使用！</p>
                </div>
                <div class="col-sm-6 col-md-3 item">
                    <h3 style="margin:12px;font-size:16px;">Contact us</h3>
                    <ul>
                        <li><a href="#"></a></li>
                        <li><a href="#"></a></li>
                        <li></li>
                        <li><label style="color:rgb(188,188,188);">jing946@foxmail.com</label></li>
                    </ul>
                </div>
            </div>
            <p class="copyright" style="height:22px;padding:1px;">Jun 26 2020</p>
        </div>
    </footer>
</div>

</body>

</html>

