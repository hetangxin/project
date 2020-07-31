<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用户主页</title>
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.5.1.js"></script>
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
    <script src="${pageContext.request.contextPath}/static/js/userInfo.js"></script>
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
<div></div>
<div class="features-boxed">
    <nav class="navbar navbar-light navbar-expand-md bg-danger navigation-clean">
        <div class="container"><a class="navbar-brand" href="${pageContext.request.contextPath}/home"><strong>会议室预订管理系统</strong><br></a><button class="navbar-toggler"
                                                                                                          data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item" role="presentation"><a class="nav-link" href="${pageContext.request.contextPath}/userInfo" data-bs-hover-animate="pulse" id="user_nav_name">${user.getUserName()}</a></li>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link" href="${pageContext.request.contextPath}/userMeetingNotify" id="ad_nav_name_e">
                            <svg width="25px" height="25px" t="1593583310053" class="icon" viewbox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2186" id="notice">
                                <path d="M204.8 842.6496a108.8 108.8 0 0 1-108.8-108.8V290.1504c0-60.1088 48.6912-108.8 108.8-108.8h614.4c60.1088 0 108.8 48.6912 108.8 108.8v443.6992A108.8 108.8 0 0 1 819.2 842.6496H204.8z m0-64h614.4a44.8 44.8 0 0 0 44.8-44.8V290.1504A44.8 44.8 0 0 0 819.2 245.3504H204.8a44.8 44.8 0 0 0-44.8 44.8v443.6992c0 24.7808 20.0704 44.8 44.8 44.8z" fill="#5A5A68" p-id="2187"></path>
                                <path d="M139.5712 387.1744a32 32 0 1 1 28.0576-57.5488l335.9744 163.9936c5.2736 2.56 11.52 2.56 16.7936 0l335.9744-163.9936a32 32 0 1 1 28.0576 57.5488l-335.9232 163.9424c-23.04 11.264-49.9712 11.264-73.0112 0L139.5712 387.1744z" fill="#5A5A68" p-id="2188"></path>
                            </svg>
                        </a>
                    </li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="${pageContext.request.contextPath}/home" id="user_quit">退出</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container">
        <div class="intro"></div>
        <div class="row justify-content-center features">
            <div class="col-sm-6 col-md-5 col-lg-4 item">
                <div data-bs-hover-animate="pulse" class="box"><i class="fa fa-book icon" style="color:rgb(220,53,69);"></i>
                        <h3 class="name">会议室预定</h3>
                        <p class="description">显示会议室列表、增加会议室、会议室修改等功能</p><a href="${pageContext.request.contextPath}/userBookingMeeting" class="learn-more" style="color:rgb(220,53,69);">查看详情
                            »</a>
                </div>
                <div data-bs-hover-animate="pulse" class="box"><i class="fa fa-stumbleupon-circle icon" style="color:rgb(154,154,154);"></i>
                    <h3 class="name">更多功能</h3>
                    <p class="description">&nbsp;敬请期待...</p>
                    <p class="description" style="margin:3px;">&nbsp;&nbsp;</p><a class="text-secondary learn-more" href="#" style="color:rgb(220,53,69);">查看详情
                        »</a>
                </div>
            </div>
            <div class="col-sm-6 col-md-5 col-lg-4 item">
                <div data-bs-hover-animate="pulse" class="box"><i class="fa fa-history icon" style="color:rgb(220,53,69);"></i>
                    <h3 class="name">会议室预定历史</h3>
                    <p class="description">进入用户管理界面、添加新用户、修改用户信息等功能</p><a href="${pageContext.request.contextPath}/userBookingHistory" class="learn-more" style="color:rgb(220,53,69);">查看详情
                        »</a>
                </div>
            </div>
            <div class="col-sm-6 col-md-5 col-lg-4 item">
                <div data-bs-hover-animate="pulse" class="box"><i class="fa fa-odnoklassniki-square icon" style="color:rgb(220,53,69);"></i>
                    <h3 class="name">个人中心</h3>
                    <p class="description">进入用户管理界面、添加新用户、修改用户信息等功能</p><a href="${pageContext.request.contextPath}/userInfo" class="learn-more" style="color:rgb(220,53,69);">查看详情
                        »</a>
                </div>
            </div>
        </div>
    </div>
</div>
<div></div>
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
<script>
    $(function () {

        //显示通知
        $.ajax({

            url:"${pageContext.request.contextPath}/notice/findNoticeByUserIdAndState",
            data:{},
            success(result) {
                if(result.extendInfo.noticeSize > 0) {

                    var trHtml = "<span>";
                    trHtml += result.extendInfo.noticeSize;
                    trHtml += "</span>"
                    $("#notice").after(trHtml);
                }
            }

        })

    })
</script>
</html>

