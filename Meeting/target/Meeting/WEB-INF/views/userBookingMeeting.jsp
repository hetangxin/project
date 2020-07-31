<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用户--会议室预定</title>
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

<body style="margin:0px auto; overflow:auto;" >
<nav class="navbar navbar-light navbar-expand-md bg-danger navigation-clean">
    <div class="container"><a class="navbar-brand" href="${pageContext.request.contextPath}/home"><strong>会议室预订管理系统</strong><br></a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
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
                <li class="nav-item" role="presentation"><a class="nav-link" href="${pageContext.request.contextPath}/home" id="user_quit">退出</a></li>
            </ul>
        </div>
    </div>
</nav>
<div style="height: 717px;overflow: auto" >
    <h2 class="text-center" style="padding:40px 0px 5px 0px;margin-top:-3px;">会议室订阅</h2>
    <div>
        <div class="container">
            <div class="row" style="padding:5px;margin-top:24px;">
                <div class="col"><input type="date" id="day"></div>
                <div class="col-lg-3 offset-lg-0"><label class="col-form-label">开始时间</label><select id="time1"><optgroup label="时间" id="time1g"></optgroup><optgroup label="早上"><option value="08">8:00</option><option value="09">9:00</option><option value="10">10:00</option><option value="11">11:00</option><option value="12">12:00</option></optgroup><optgroup label="下午"><option value="13">13:00</option><option value="14">14:00</option><option value="15">15:00</option><option value="16">16:00</option><option value="17">17:00</option><option value="18">18:00</option></optgroup><optgroup label="晚上"><option value="19">19:00</option><option value="20">20:00</option><option value="21">21:00</option><option value="22">22:00</option><option value="23">23:00</option></optgroup></select></div>
                <div
                        class="col"><label class="col-form-label">结束时间</label><select id="time2"><optgroup label="时间" id="time1g"></optgroup><optgroup label="早上"><option value="08">8:00</option><option value="09">9:00</option><option value="10">10:00</option><option value="11">11:00</option><option value="12">12:00</option></optgroup><optgroup label="下午"><option value="13">13:00</option><option value="14">14:00</option><option value="15">15:00</option><option value="16">16:00</option><option value="17">17:00</option><option value="18">18:00</option></optgroup><optgroup label="晚上"><option value="19">19:00</option><option value="20">20:00</option><option value="21">21:00</option><option value="22">22:00</option><option value="23">23:00</option></optgroup></select></div>
                <div
                        class="col">
                    <div class="row">
                        <div class="col"><button class="btn btn-primary" type="button" id="searchTime" style="background-color:rgb(34,109,152);margin-left:-175px;"><i class="fa fa-search"></i></button></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <div class="container">
            <div class="row" style="padding:5px;">
                <div class="col"></div>
                <div class="col"></div>
                <div class="col"></div>
            </div>
        </div>
    </div>
    <div class="container" style="background-color:#ffffff;">
        <div class="table-responsive table-striped table-bordered" id="bookt">
            <table class="table">
                <thead>
                <tr>
                    <th></th>
                    <th>会议室名</th>
                    <th>位置</th>
                    <th>可容纳人数</th>
                    <th>设备</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody id="bookbody">
                <tr></tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="container" style="margin-top:64px;"><label style="height:32px;background-color:#ffffff;color:rgb(19,19,20);">已申请的会议</label></div>
    <div class="container" style="background-color:#ffffff;">
        <div class="table-responsive table-striped table-bordered" id="bookok" style="margin-bottom:29px;">
            <table class="table">
                <thead>
                <tr>
                    <th>会议编号</th>
                    <th>会议室名</th>
                    <th>位置</th>
                    <th>会议开始时间</th>
                    <th>会议结束时间</th>
                    <th>设备</th>
                    <th>申请状态</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody id="okbody">
                <tr></tr>
                </tbody>
            </table>
        </div>
    </div>
    <%--<div></div>--%>
    <div class="modal fade" role="dialog" tabindex="-1" id="readydel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Modal Title</h4><label id="nobookla">Label</label><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
                <div class="modal-body">
                    <p>确定取消此次预订？</p>
                </div>
                <div class="modal-footer"><button class="btn btn-light" type="button" data-dismiss="modal">Close</button><button class="btn btn-primary" type="button" id="oknobook">Save</button></div>
            </div>
        </div>
    </div>
    <div class="modal fade" role="dialog" tabindex="-1" id="booking">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Modal Title</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
                <div class="modal-body">
                    <label id="bookl">Label</label>
                    <p>确定预订？</p>
                </div>
                <div class="modal-footer"><button class="btn btn-light" type="button" data-dismiss="modal">Close</button><button class="btn btn-primary" type="button" id="readybook">Save</button></div>
            </div>
        </div>
    </div>
    <div class="projects-clean">
        <div class="container">
            <div class="intro"></div>
        </div>
    </div>
</div>
<div class="footer-dark" style="height:190px;width: 100%; margin-top: 20px; padding:32px; ">
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
<div class="modal fade" role="dialog" tabindex="-1" id="showqcode">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Modal Title</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
            <div class="modal-body">
                <div id="codeq"></div>
            </div>
            <div class="modal-footer"><button class="btn btn-light" type="button" data-dismiss="modal">Close</button><button class="btn btn-primary" type="button" id="exitqcode">Save</button></div>
        </div>
    </div>
</div>
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
</body>
<script type="text/javascript">
    //判断输入的时间段
    $("#searchTime").click(function(){
        var d=$("#day").val();
        var s= $("#time1").val();
        var e=$("#time2").val();
        if(d==""||eval(s)>=eval(e))
        {
            alert("请选择合法时间段");
        }else{
            var bl=$("#bookbody").find("tr").length;
            for(var i=1;i<bl;i++)
            {  $("#bookbody").find("tr").eq(1)
                .remove();
            }
            //alert( $("#bookbody").find("tr").length);
            //$("#bookbody").html("");
            // var data={};
            // data['startTime']=d+" "+s+":00:00";
            // data['endTime']=d+" "+e+":00:00";

            var startTime = d+" "+s+":00:00";
            var endTime = d+" "+e+":00:00";

            console.log(startTime)
            console.log(endTime)

            //根据时间段查找会议
            $.ajax({
                url:"${pageContext.request.contextPath}/apply/findByTime",
                data:{"startTime":startTime, "endTime":endTime},
                success(result) {
                    console.log(result);
                    //alert(response['data'][0]['password']);
                    var le=result['data'].length;
                    var l=$("#bookbody").find("tr").length;
                    var s1=$("#bookt").find("tr").eq(l);
                    for(var i=0;i<le;i++)
                    {
                        var mid=result['data'][i]['meetingroom_name'];
                        var fr=result['data'][i]['position_floor'];
                        var room=result['data'][i]['position_room'];
                        var lim=result['data'][i]['number'];
                        var dev=result['data'][i]['equipment'];

                        var trHTML = "<tr>";
                        trHTML += "<td>";
                        trHTML += i+1;
                        trHTML += "</td>";
                        trHTML += "<td>";
                        trHTML += mid;
                        trHTML += "</td>";
                        trHTML += "<td>";
                        trHTML += fr + "楼" + room + "号房";
                        trHTML += "</td>";
                        trHTML += "<td>";
                        trHTML += lim;
                        trHTML += "</td>";
                        trHTML += "<td>";
                        trHTML += dev;
                        trHTML += "</td>";

                        trHTML += "<td>";
                        if(${user.getType() == 1}) {
                            trHTML+="<button class='btn btn-primary' type='button' style='background-color:rgb(109,194,255);color:rgb(10,8,8);'name='bbt' ><i class='fa fa-check' style='color:rgb(255,255,255);'></i></button>"
                        }
                        trHTML += "</td></tr>";

                        l=$("#bookbody").find("tr").length;
                        $("#bookt").find("tr").eq(l).after(trHTML);
                    }
                }
            })

        }
    });
    $(document).ready(function()
    {
        //显示会议通知
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

        var bl=$("#okbody").find("tr").length;
        for(var i=1;i<bl;i++)
        {  $("#okbody").find("tr").eq(1)
            .remove();
        }

        //显示已选择的会议
        $.ajax({

            url:"${pageContext.request.contextPath}/apply/findByUserIdAndState",
            data:{},
            success(result) {
                console.log(result);
                var le = result['apply'].length;
                var l = $("#okbody").find("tr").length;
                var s1 = $("#bookok").find("tr").eq(l);
                for (var i = 0; i < le; i++) {
                    var oid = result['apply'][i]['meeting_id'];
                    var mid = result['meetingRoom'][i]['meetingroom_name'];
                    var room = result['meetingRoom'][i]['position_floor'];
                    var floor = result['meetingRoom'][i]['position_room'];
                    var dev = result['meetingRoom'][i]['equipment'];
                    var start = result['apply'][i]['start_time'];
                    var end = result['apply'][i]['end_time'];
                    var state = result['apply'][i]['state'];

                    if(state == 0)  state = "申请中";

                    var st = new Date(start);
                    var ss = st.getFullYear() + "-" + (st.getMonth() + 1) + "-" + st.getDate() + " " + st.getHours() + ":0" + st.getMinutes() + ":0" + st.getSeconds();

                    var et = new Date(end);
                    var es = et.getFullYear() + "-" + (st.getMonth() + 1) + "-" + et.getDate() + " " + et.getHours() + ":0" + et.getMinutes() + ":0" + et.getSeconds();

                    var trHTML = "<tr>";
                    trHTML += "<td>";
                    trHTML += oid;
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += mid;
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += floor + "楼" + room + "号房";
                    trHTML += "</td>";

                    trHTML += "<td>"
                    trHTML += ss;
                    trHTML += "</td>"
                    trHTML += "<td>"
                    trHTML += es;
                    trHTML += "</td>"
                    trHTML += "<td>"
                    trHTML += dev;
                    trHTML += "</td>"
                    trHTML += "<td>"
                    trHTML += state;
                    trHTML += "</td>"
                    trHTML += "<td>";

                    trHTML += "<button class='btn btn-primary' type='button' style='background-color:rgb(247,74,63);color:rgb(255,255,255);'name='cancelm'><i class='fa fa-remove'></i></button>"
                    trHTML += '<label name="qcode" style="width:61px;height:34px;">查看</label>';
                    trHTML += "</td></tr>";
                    l = $("#okbody").find("tr").length;
                    $("#bookok").find("tr").eq(l).after(trHTML);
                }
            }

        })

        //取消会议预定
        $("#oknobook").click(function()
        {
            $("#readydel").modal("hide");
            var data = {};
            var odex= $("#nobookla").text();
            var oid=$("#okbody").find("tr").eq(odex).find("td").eq(0).html();
            console.log(oid)

            $.ajax({
                url:"${pageContext.request.contextPath}/apply/cancelApply",
                data:{"meeting_id":oid},
                success(result) {
                    $("#okbody").find("tr").eq(odex).remove();
                }
            })

        })

        //显示会议室预定模态框
        $("#bookt").on('click',"button[name='bbt']",function(){
            $("#bookl").text($(this).parent().parent().index());
            $("#booking").modal("show");
        })


        //预定会议室
        $("#readybook").click(function() {

            var ind = $("#bookl").text();
            var hang = $("#bookbody").find("tr").eq(ind);
            var da = $("#day").val() + " ";
            var ts = da + $("#time1").val() + ":00:00";
            var te = da + $("#time2").val() + ":00:00";
            var mn = hang.find("td").eq(1).html();
            var dev = hang.find("td").eq(4).html();
            var l = $("#okbody").find("tr").length;
            var s1 = $("#bookok").find("tr").eq(l);
            var bid = "";

            $.ajax({

                url: "${pageContext.request.contextPath}/apply/shenqing",
                data: {
                    "meetingRoom_name": mn,
                    "start_time": ts,
                    "end_time": te,
                },
                success(result) {
                    var oid = result['apply']['meeting_id'];
                    var mid = result['meetingRoom']['meetingroom_name'];
                    var room = result['meetingRoom']['position_floor'];
                    var floor = result['meetingRoom']['position_room'];
                    var dev = result['meetingRoom']['equipment'];
                    var start = result['apply']['start_time'];
                    var end = result['apply']['end_time'];
                    var state = result['apply']['state'];

                    if(state == 0)  state = "申请中";

                    var st = new Date(start);
                    var ss = st.getFullYear() + "-" + (st.getMonth() + 1) + "-" + st.getDate() + " " + st.getHours() + ":0" + st.getMinutes() + ":0" + st.getSeconds();

                    var et = new Date(end);
                    var es = et.getFullYear() + "-" + (st.getMonth() + 1) + "-" + et.getDate() + " " + et.getHours() + ":0" + et.getMinutes() + ":0" + et.getSeconds();

                    var trHTML = "<tr>";
                    trHTML += "<td>";
                    trHTML += oid;
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += mid;
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += floor + "楼" + room + "号房";
                    trHTML += "</td>";

                    trHTML += "<td>"
                    trHTML += ss;
                    trHTML += "</td>"
                    trHTML += "<td>"
                    trHTML += es;
                    trHTML += "</td>"
                    trHTML += "<td>"
                    trHTML += dev;
                    trHTML += "</td>"
                    trHTML += "<td>"
                    trHTML += state;
                    trHTML += "</td>"
                    trHTML += "<td>";

                    trHTML += "<button class='btn btn-primary' type='button' style='background-color:rgb(247,74,63);color:rgb(255,255,255);'name='cancelm'><i class='fa fa-remove'></i></button>"
                    trHTML += "<button class='btn btn-primary' type='button' style='background-color:rgb(127,204,90);color:rgb(255,255,255);margin-left:5px;width:38.5781px;padding-left:10px;'name='attend'><i class='fa fa-plus-circle'></i></button>"
                    trHTML += '<label name="qcode" style="width:61px;height:34px;">查看</label>';
                    trHTML += "</td></tr>";
                    l = $("#okbody").find("tr").length;
                    $("#bookok").find("tr").eq(l).after(trHTML);

                    var bl=$("#bookbody").find("tr").length;
                    for(var i=1;i<bl;i++)
                    {  $("#bookbody").find("tr").eq(1)
                        .remove();
                    }

                    $("#booking").modal("hide");
                }
            })
        })
    })
</script>
</html>
