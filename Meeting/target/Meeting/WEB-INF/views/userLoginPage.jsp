<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用户登录页面</title>
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
<nav class="navbar navbar-light navbar-expand-md bg-danger navigation-clean">
    <div class="container"><a class="navbar-brand" href="${pageContext.request.contextPath}/home"><strong>会议室预订管理系统</strong><br></a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div
                class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
                <li class="nav-item" role="presentation"><a class="nav-link" href="${pageContext.request.contextPath}/home" data-bs-hover-animate="pulse">首页</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="login-dark" style="background-image:url(&quot;${pageContext.request.contextPath}/static/img/desk2.jpg&quot;);height:744px;">
    <form style="background-color:rgba(30,40,51,0.81);" id="login_from">
        <h2 class="sr-only">Login Form</h2>
        <div class="illustration"><i class="icon ion-ios-locked-outline"></i></div>
        <input class="form-control" type="text" name="userId" placeholder="userId" id="userId">
        <input class="form-control" type="password" name="password" placeholder="Password" id="password">
        <button
                class="btn btn-primary btn-block" type="button" data-bs-hover-animate="pulse" id="UserLogin">Log In</button><a href="#" class="forgot">Forgot your Id or password?</a>
        <p id="errorInfo" style="text-align: center"></p>
    </form>
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
<script type="text/javascript">
    $(function () {
        $("#UserLogin").click(function () {

            var userid = $("#userId").val();
            var password = $("#password").val();

            if(userid.length == 0 || password.length == 0) {
                $("#errorInfo").css("color", "rgb(220, 53, 69)");
                $("#errorInfo").html("账号或密码不能为空！");
                return false;
            }

            //登录
            $.ajax({
                url:"${pageContext.request.contextPath}/user/login",
                data:{"userId":userid,"password":password},
                success(result) {
                    if(result.code == 100) {
                        location.href = "${pageContext.request.contextPath}/userHome"
                    } else {
                        $("#errorInfo").css("color", "rgb(220, 53, 69)");
                        $("#errorInfo").html(result.extendInfo.loginError);
                    }
                }
            })
        })
    })
</script>
</html>
