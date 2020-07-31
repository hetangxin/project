<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>管理员--会议室审批</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/fonts/ionicons.min.css">
    <!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Article-Clean.css"> -->
    <!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Carousel_Image_Slider.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Contact-FormModal-Contact-Form-with-Google-Map.css"> -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/countdown-timer.css">
    <!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/countdown-timer1.css"> -->
    <!-- link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/customHomePageMid.css"> -->
    <!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Data-Table.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Data-Table2.css"> -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Footer-Dark.css">
    <!--  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/homepagefoot.css">
     <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/homepageMid.css">
     <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/homepagewrap.css"> -->
    <!-- <link rel="stylesheet" href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css"> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
    <!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Login-Form-Dark.css">
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/User-Tasks-and-User-Activity-Streams---List-Group-Component.css">-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/zzp_nav.css">
</head>

<body style="margin-right:0px;">
<div class="article-dual-column"></div>
<nav class="navbar navbar-light navbar-expand-md bg-danger navigation-clean">
    <div class="container"><a class="navbar-brand" href="${pageContext.request.contextPath}/home">会议室预订管理系统</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse"
             id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
                <li class="nav-item" role="presentation"><a class="nav-link" href="${pageContext.request.contextPath}/adminHome">返回上一页</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="#" data-bs-hover-animate="pulse" id="ad_nav_name">管理员admin</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="${pageContext.request.contextPath}/home" id="ad_quit">退出</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="row" style="padding: 0;width:97%;">
    <div class="col"><label class="col-form-label float-right" id="jinjijiuhuche" style="margin-left:0;margin-top:0px ;height: 5px;width: 5px;"></label></div>
</div>
<h2 class="text-center" style="padding:20px 0px 0px 0px;">会议室申请审批</h2>
<div class="container">
    <div class="table-responsive table-striped " id="hist" style="width:930px; padding:20px 0px;margin-left: 40px">
        <table class="table">
            <thead>
            <tr style="margin-right:30px;margin-left:30px;">
                <th></th>
                <th>会议编号</th>
                <th>会议室名</th>
                <th>开始时间</th>
                <th>结束时间</th>
                <th>申请部门</th>
                <th>申请人</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody id="hisb">
            <tr></tr>
            </tbody>
        </table>
    </div>
</div>
<div></div>
<div class="modal fade" role="dialog" tabindex="-1" id="accpet1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">操作</h4><label id="nobookla1">Label</label><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
            <div class="modal-body">
                <p>确定同意此次预订？</p>
            </div>
            <div class="modal-footer"><button class="btn btn-light" type="button" data-dismiss="modal">Close</button><button class="btn btn-primary" type="button" id="acceptbook">Save</button></div>
        </div>
    </div>
</div>
<div class="modal fade" role="dialog" tabindex="-1" id="refuse1">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">操作</h4><label id="nobookla2">Label</label><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
            <div class="modal-body">
                <p>确定拒绝此次预订？</p>
            </div>
            <div class="modal-footer"><button class="btn btn-light" type="button" data-dismiss="modal">Close</button><button class="btn btn-primary" type="button" id="refusebook">Save</button></div>
        </div>
    </div>
</div>
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
<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
<!-- <script src="${pageContext.request.contextPath}/static/js/adminHomepage.js"></script>
<script src="${pageContext.request.contextPath}/static/js/adminLoginPage.js"></script>
<script src="${pageContext.request.contextPath}/static/js/adminRoomManager.js"></script> -->
<script src="${pageContext.request.contextPath}/static/js/adminUserManager.js"></script>
<!-- <script src="${pageContext.request.contextPath}/static/js/bs-animation.js"></script> -->
<!--  <script src="${pageContext.request.contextPath}/static/js/email.js"></script> -->
<script src="${pageContext.request.contextPath}/static/js/host.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script>
<!-- <script src="${pageContext.request.contextPath}/static/js/jquery.qrcode.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/userBooking.js"></script>
<script src="${pageContext.request.contextPath}/static/js/userBookingHistory.js"></script>
<script src="${pageContext.request.contextPath}/static/js/userBookingTime.js"></script>
<script src="${pageContext.request.contextPath}/static/js/userHomepage.js"></script>
<script src="${pageContext.request.contextPath}/static/js/userInfo.js"></script>
<script src="${pageContext.request.contextPath}/static/js/userLoginPage.js"></script> -->
</body>
<script type="text/javascript">

    $(function () {

        bl=$("#hisb").find("tr").length;
        for(var i=1;i<bl;i++)
        {  $("#hisb").find("tr").eq(1)
            .remove();
        }


        //查找申请中的会议
        $.ajax({

            url:"${pageContext.request.contextPath}/apply/operation",
            data:{},
            success(result) {
                var le=result['apply'].length;
                var l=$("#hisb").find("tr").length;
                var s1=$("#hist").find("tr").eq(l);
                for(var i=0;i<le;i++) {
                    var trHTML = "<tr>";

                    var start = result['apply'][i]['start_time'];
                    var end = result['apply'][i]['end_time'];

                    var st = new Date(start);
                    var ss = st.getFullYear() + "-" + (st.getMonth() + 1) + "-" + st.getDate() + " " + st.getHours() + ":0" + st.getMinutes() + ":0" + st.getSeconds();

                    var et = new Date(end);
                    var es = et.getFullYear() + "-" + (st.getMonth() + 1) + "-" + et.getDate() + " " + et.getHours() + ":0" + et.getMinutes() + ":0" + et.getSeconds();

                    trHTML += "<td>";
                    trHTML += i+1;
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += result['apply'][i]['meeting_id'];
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += result['meetingRoom'][i]['meetingroom_name'];
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += ss;
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += es;
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += result['dept'][i]['dept_name'];
                    trHTML += "</td>";

                    trHTML += "<td>";
                    trHTML += result['dept'][i]['dept_leader'];
                    trHTML += "</td>";

                    trHTML += "<td>";

                    trHTML += "<button class='btn btn-primary' type='button' style='background-color:rgb(247,74,63);color:rgb(255,255,255);'name='accept'>同意</button>";
                    trHTML += "<button class='btn btn-primary' type='button' style='background-color:rgb(247,74,63);color:rgb(255,255,255);'name='refuse'>拒绝</button>";
                    trHTML += "</td></tr>";
                    l=$("#hisb").find("tr").length;

                    $("#hist").find("tr").eq(l).after(trHTML);
                }
            }

        })

        //显示模态框
        $("#hist").on('click',"button[name='accept']",function(){
            $("#nobookla1").text($(this).parent().parent().index());
            $("#accpet1").modal("show");
        })

        //显示模态框
        $("#hist").on('click',"button[name='refuse']",function(){
            $("#nobookla2").text($(this).parent().parent().index());
            $("#refuse1").modal("show");
        })

        //同意会议申请
        $("#acceptbook").click(function () {

            var data = {};
            var odex= $("#nobookla1").text();
            var oid=$("#hisb").find("tr").eq(odex).find("td").eq(1).html();

            var dept_name = $("#hisb").find("tr").eq(odex).find("td").eq(5).html();

            console.log(oid);

            $("#hisb").find("tr").eq(odex).remove();

            $.ajax({

                url:"${pageContext.request.contextPath}/apply/accept",
                data:{"meeting_id":oid, "dept_name":dept_name},
                success(result) {
                    console.log("accept");
                }

            })

            $("#accpet1").modal("hide");
        })

        //拒绝会议申请
        $("#refusebook").click(function () {
            var data = {};
            var odex= $("#nobookla2").text();
            var oid=$("#hisb").find("tr").eq(odex).find("td").eq(1).html();
            var dept_name = $("#hisb").find("tr").eq(odex).find("td").eq(5).html();

            console.log(oid);

            $("#hisb").find("tr").eq(odex).remove();

            $.ajax({

                url:"${pageContext.request.contextPath}/apply/refuse",
                data:{"meeting_id":oid, "dept_name":dept_name},
                success(result) {
                    console.log("refuse");
                }

            })

            $("#refuse1").modal("hide");
        })

    })

</script>

</html>
