<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html style="height:804px;">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用户--会议室预订历史</title>
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
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/styles-1.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/styles.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/User-Tasks-and-User-Activity-Streams---List-Group-Component.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/zzp_nav.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/a-index.css" />

</head>

<body style="height:770px;">
<nav class="navbar navbar-light navbar-expand-md bg-danger navigation-clean">
    <div class="container"><a class="navbar-brand" href="#"><strong>会议室预订管理系统</strong><br></a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div
                class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
                <li class="nav-item" role="presentation"><a class="nav-link" href="${pageContext.request.contextPath}/userHome">返回上一页</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="${pageContext.request.contextPath}/userInfo" data-bs-hover-animate="pulse" id="user_nav_name">${user.getUserName()}</a></li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" href="${pageContext.request.contextPath}/userMeetingNotify" id="ad_nav_name_e">
                        <svg width="25px" height="25px" t="1593583310053" class="icon" viewbox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2186" id="notice">
                            <path d="M204.8 842.6496a108.8 108.8 0 0 1-108.8-108.8V290.1504c0-60.1088 48.6912-108.8 108.8-108.8h614.4c60.1088 0 108.8 48.6912 108.8 108.8v443.6992A108.8 108.8 0 0 1 819.2 842.6496H204.8z m0-64h614.4a44.8 44.8 0 0 0 44.8-44.8V290.1504A44.8 44.8 0 0 0 819.2 245.3504H204.8a44.8 44.8 0 0 0-44.8 44.8v443.6992c0 24.7808 20.0704 44.8 44.8 44.8z" fill="#5A5A68" p-id="2187"></path>
                            <path d="M139.5712 387.1744a32 32 0 1 1 28.0576-57.5488l335.9744 163.9936c5.2736 2.56 11.52 2.56 16.7936 0l335.9744-163.9936a32 32 0 1 1 28.0576 57.5488l-335.9232 163.9424c-23.04 11.264-49.9712 11.264-73.0112 0L139.5712 387.1744z" fill="#5A5A68" p-id="2188"></path>
                        </svg>
                    </a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" href="${pageContext.request.contextPath}/home" id="user_quit">退出</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <h2 class="text-center" style="padding:10px 0px 25px 0px;margin-top:30px;">会议室订阅历史查询</h2>
</div>
<div class="container">
    <form class="search-form">
        <div class="input-group" style="width:928px; margin:0 auto">
            <div class="input-group-prepend"><span class="input-group-text" id="sou"><i class="fa fa-search"></i></span></div><input class="form-control" type="text" placeholder="会议室名" id="chaxun" style="width:176px;height:34px;margin-top:0px;">
            <div class="input-group-append"></div>
        </div>
    </form>
</div>
<div class="container">
    <div class="table-responsive table-striped table-bordered" id="hist" style="width:930px; margin:0 auto">
        <table class="table">
            <thead>
            <tr style="margin-right:30px;margin-left:30px;">
                <th>会议室名字</th>
                <th>会议开始时间</th>
                <th>会议结束时间</th>
                <th>申请状态</th>
                <th>会议部门</th>
                <th>申请人</th>
            </tr>
            </thead>
            <tbody id="hisb">
            <tr></tr>
            </tbody>
        </table>
    </div>
</div>
<%--<div class="row" style="height:38px;margin-bottom:80px;"></div>--%>
<div class="footer-dark" style="height:190px;width: 100%; padding:32px;position: absolute;bottom: 0;">
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
<header></header>
<header></header>
<div class="features-boxed"></div>
<header></header>
<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/adminHomepage.js"></script>
<script src="${pageContext.request.contextPath}/static/js/adminLoginPage.js"></script>
<script src="${pageContext.request.contextPath}/static/js/adminRoomManager.js"></script>
<script src="${pageContext.request.contextPath}/static/js/adminUserManager.js"></script>
<script src="${pageContext.request.contextPath}/static/js/bs-animation.js"></script>
<script src="${pageContext.request.contextPath}/static/js/email.js"></script>
<script src="${pageContext.request.contextPath}/static/js/host.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery.qrcode.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/userBooking.js"></script>
<script src="${pageContext.request.contextPath}/static/js/userBookingHistory.js"></script>
<script src="${pageContext.request.contextPath}/static/js/userBookingTime.js"></script>
<script src="${pageContext.request.contextPath}/static/js/userHomepage.js"></script>
<script src="${pageContext.request.contextPath}/static/js/userInfo.js"></script>
<script src="${pageContext.request.contextPath}/static/js/userLoginPage.js"></script>
</body>
<script type="text/javascript">

    $(document).ready(function()
    {
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

        bl=$("#hisb").find("tr").length;
        for(var i=1;i<bl;i++)
        {  $("#hisb").find("tr").eq(1)
            .remove();
        }

        //显示会议历史
        $.ajax({

            url:"${pageContext.request.contextPath}/apply/findAll",
            data:{},
            success(result) {
                console.log(result);
                //alert(response['data'][0]['password']);
                var le=result['apply'].length;
                var l=$("#hisb").find("tr").length;
                var s1=$("#hist").find("tr").eq(l);
                for(var i=0;i<le;i++)
                {
                    var bid=result['apply'][i]['meeting_id'];
                    var mid=result['meetingRoom'][i]['meetingroom_name'];
                    var start =result['apply'][i]['start_time'];
                    var end=result['apply'][i]['end_time'];
                    var state=result['apply'][i]['state'];
                    var dept= result['dept'][i]['dept_name'];
                    var leader = result['dept'][i]['dept_leader'];

                    if(state == 0) {
                        state = "申请中";
                    } else {
                        state = "已同意";
                    }

                    var st = new Date(start);
                    var ss = st.getFullYear() + "-" + (st.getMonth() + 1) + "-" + st.getDate() + " " + st.getHours() + ":0" + st.getMinutes() + ":0" + st.getSeconds();

                    var et = new Date(end);
                    var es = et.getFullYear() + "-" + (st.getMonth() + 1) + "-" + et.getDate() + " " + et.getHours() + ":0" + et.getMinutes() + ":0" + et.getSeconds();

                    var trHTML = "<tr>";
                    trHTML += "<td>";
                    trHTML += mid;
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML +=  ss;
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += es;
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += state
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += dept
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += leader
                    trHTML += "</td>";
                    trHTML += "</tr>";

                    l=$("#hisb").find("tr").length;

                    $("#hist").find("tr").eq(l).after(trHTML);

                }
            }

        })

        //搜索
        $("#sou").click(function(){
            var co=$("#chaxun").val();
            if(co==""){
                $("#hisb").find("tr").show();}else
            {
                $("#hisb").find("tr").hide();
                var l=$("#hisb").find("tr").length;
                for(var i=1;i<l;i++)
                {
                    var t=$("#hisb").find("tr").eq(i);
                    if(t.find("td").eq(0).html().indexOf(co)>=0)
                    {
                        t.show();

                    }
                }
            }
            //$("#hisb").find("tr").eq(0).show();

        })

        $("#chaxun").keyup(function () {
            var co=$("#chaxun").val();
            if(co==""){
                $("#hisb").find("tr").show();}else
            {
                $("#hisb").find("tr").hide();
                var l=$("#hisb").find("tr").length;
                for(var i=1;i<l;i++)
                {
                    var t=$("#hisb").find("tr").eq(i);
                    if(t.find("td").eq(0).html().indexOf(co)>=0)
                    {
                        t.show();

                    }
                }
            }
            //$("#hisb").find("tr").eq(0).show();
        })

    })

</script>
</html>
