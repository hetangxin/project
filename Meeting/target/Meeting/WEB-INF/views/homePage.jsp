<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>首页</title>
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
    <!--<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>-->
    <script src="${pageContext.request.contextPath}/static/js/jquery.dataTables.min.js"></script>
    <!--<script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>-->
    <script src="${pageContext.request.contextPath}/static/js/dataTables.bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/adminHomepage.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/adminLoginPage.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/adminRoomManager.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/adminUserManager.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bs-animation.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/email.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/host.js"></script>
    <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.js"></script>-->
    <script src="${pageContext.request.contextPath}/static/js/aos.js"></script>
    <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>-->
    <script src="${pageContext.request.contextPath}/static/js/swiper.jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/jquery.qrcode.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/userBooking.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/userBookingHistory.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/userBookingTime.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/userHomepage.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/userLoginPage.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/fonts/ionicons.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Article-Clean.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Carousel_Image_Slider.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Contact-FormModal-Contact-Form-with-Google-Map.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/countdown-timer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/countdown-timer1.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/customHomePageMid.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Data-Table.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Data-Table2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Footer-Dark.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/homepagefoot.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/homepageMid.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/homepagewrap.css">
    <!--    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css">-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/dataTables.bootstrap.min.css" />
    <!--    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/animate.min.css" />
    <!--link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.css">-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/aos.css" />
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/swiper.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Login-Form-Dark.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/loginOptionPageMid.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/loginPageMid.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/MUSA_timeline.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/MUSA_timeline1.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Newsletter-Subscription-Form.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/packetTrackerMid1.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/packetTracterMid1.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/packetTracterMid2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Profile-Edit-Form.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Profile-Edit-Form1.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/select2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/signUpPageMid.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/User-Tasks-and-User-Activity-Streams---List-Group-Component.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/zzp_nav.css">
</head>

<body>
<div class="projects-horizontal"></div>
<nav class="navbar navbar-light navbar-expand-md bg-danger navigation-clean">
    <div class="container"><a class="navbar-brand" href="${pageContext.request.contextPath}/home"><strong>会议室预订管理系统</strong><br></a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div
                class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
                <li class="nav-item" role="presentation"><a class="nav-link" href="${pageContext.request.contextPath}/loginOption">登录</a></li>
            </ul>
        </div>
    </div>
</nav>
<!-- <div class="swiper-container">
    <div class="swiper-wrapper"></div>
    <div class="swiper-pagination"></div>
    <div class="swiper-button-prev"></div>
    <div data-bs-hover-animate="pulse" class="swiper-button-next"></div>
</div> -->
<div class="simple-slider">
    <div class="swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <img class="bigPic" src="${pageContext.request.contextPath}/static/img/5.jpg" />
<%--                <img class="bigPic" src="${pageContext.request.contextPath}/static/img/6.jpg" />--%>
<%--                <img class="bigPic" src="${pageContext.request.contextPath}/static/img/7.jpg" />--%>
            </div>
        </div>
<%--        <div class="swiper-button-prev"></div>--%>
<%--        <div class="swiper-button-next"></div>--%>
    </div>
</div>
<div class="projects-horizontal">
    <div class="container">
        <div class="intro">
            <h2 class="text-center" data-aos="fade-up" data-aos-duration="700" data-aos-delay="400" style="margin:0px 0px 0px 0px;padding:30px 0px 0px 0px;">欢迎使用会议室预订管理系统<br></h2>
            <p class="text-center" data-aos="fade-up" data-aos-duration="1750" data-aos-delay="950"><br>致力为您打造简约、快速、便捷、高效的会议室管理系统<br><br></p>
        </div>
        <div class="row projects">
            <div class="col-sm-6 item" data-aos="fade-up" data-aos-duration="900">
                <div class="row">
                    <div class="col-md-12 col-lg-5"><a href="${pageContext.request.contextPath}/userLogin"><img class="rounded img-fluid" src="${pageContext.request.contextPath}/static/img/desk.jpg"></a></div>
                    <div class="col">
                        <h3 class="name">用户登录</h3>
                        <p class="description">用户可以预约会议室、查看会议室历史预定记录、管理个人信息等<br><br></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 item" data-aos="fade-up" data-aos-duration="900">
                <div class="row">
                    <div class="col-md-12 col-lg-5"><a href="${pageContext.request.contextPath}/adminLogin"><img class="rounded img-fluid" src="${pageContext.request.contextPath}/static/img/building.jpg"></a></div>
                    <div class="col">
                        <h3 class="name"><strong>管理员登录</strong><br></h3>
                        <p class="description">管理员可以对用户、会议室进行管理操作，如增加、删除、修改等<br></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 item" data-aos="fade-up" data-aos-duration="900">
                <div class="row">
                    <div class="col-md-12 col-lg-5"><a href="#"><img class="rounded img-fluid" src="${pageContext.request.contextPath}/static/img/coming.jpg"></a></div>
                    <div class="col">
                        <h3 class="name"><strong>更多功能</strong><br></h3>
                        <p class="description">正在完善和丰富系统，更多精彩的功能即将上线，敬请期待......<br></p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 item" data-aos="fade-up" data-aos-duration="900">
                <div class="row">
                    <div class="col-md-12 col-lg-5"><a href="#"><img class="rounded img-fluid" src="${pageContext.request.contextPath}/static/img/coming.jpg"></a></div>
                    <div class="col">
                        <h3 class="name">更多功能</h3>
                        <p class="description">敬请期待...</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
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
