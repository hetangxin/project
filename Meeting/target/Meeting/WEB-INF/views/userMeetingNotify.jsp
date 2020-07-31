<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>用户--通知</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/countdown-timer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/countdown-timer1.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Footer-Dark.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/packetTracterMid1.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/a-index.css" />
</head>
<body style="margin:0px;">
<nav class="navbar navbar-light navbar-expand-md bg-danger navigation-clean">
    <div class="container"><a class="navbar-brand" href="${pageContext.request.contextPath}/home"><strong>会议室预订管理系统</strong><br></a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div
                class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
                <li class="nav-item" role="presentation"><a class="nav-link" href="${pageContext.request.contextPath}/userHome">返回上一页</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="${pageContext.request.contextPath}/" data-bs-hover-animate="pulse" id="user_nav_name">${user.getUserName()}</a></li>
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


<h3 class="text-center" style="padding:30px 0px 5px 0px;margin-top:-3px;">未确定通知</h3>

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
                <th>序号</th>
                <th>内容</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody id="bookbody">
            <tr></tr>
            </tbody>
        </table>
    </div>
</div>
<div class="container" style="margin-top:64px;"><label style="height:32px;background-color:#ffffff;color:rgb(19,19,20); font-size: 21px;">已确认</label></div>
<div class="container" style="background-color:#ffffff;">
    <div class="table-responsive table-striped table-bordered" id="addtables" style="margin-bottom:109px;">
        <table class="table">
            <thead>
            <tr>
                <th>通知编号</th>
                <th>会议室名</th>
                <th>位置</th>
                <th>会议开始时间</th>
                <th>会议结束时间</th>
                <th>通知内容</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody id="okbody">
            </tbody>
        </table>
    </div>
</div>
<div></div>


<!-- 确认通知 -->
<div class="modal fade" role="dialog" tabindex="-1" id="newMeetingRoom">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">通知详情</h4>
                <label id="noticeid">Label</label>
            </div>
            <div class="modal-body">
                <div class="container profile profile-view" id="" style="padding:0px 20px 0px 20px;">
                    <form style="height:271px;">
                        <div class="form-row profile-row">
                            <div class="col-md-8 col-lg-12">
                                <div class="form-group"><label>会议室名称</label><input class="form-control" type="text"  id="addMeetingRoomName" autocomplete="off" required="" name="addmeetingRoomName" readonly="readonly"></div>
                                <div class="form-row">
                                    <div class="col-sm-8 col-md-12">
                                        <div class="form-group"><label>位置</label><input class="form-control" type="text" id="addFloor" name="addFloor" readonly="readonly"></div>
                                    </div>
                                </div>

                                <div class="form-row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="form-group"><label>开始时间</label><input class="form-control" type="text" id="starTime" name="starTime" readonly="readonly"></div>
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <div class="form-group"><label>结束时间</label><input class="form-control" type="text" id="endTime" name="endTime" readonly="readonly"></div>
                                    </div>
                                </div>

                                <!-- <div class="form-row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="form-group"><label>可容纳人数（人）</label><input class="form-control" type="text" id="addCapacity" name="addCapacity" autocomplete="off" required=""></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check" style="margin-left:-4px;width:111px;"><input class="form-check-input" type="checkbox" id="formCheck-1-1" style="padding-left:-22px;" name="多媒体" value="adv"><label class="form-check-label" for="formCheck-1">多媒体</label></div>
                                        <div class="form-check"
                                            style="width:87px;"><input class="form-check-input" type="checkbox" id="formCheck-2-2" name="白板" value="adv"><label class="form-check-label" for="formCheck-2" name="白板">白板</label></div>
                                        <div class="form-check" style="width:113px;height:24px;"><input class="form-check-input" type="checkbox" id="formCheck-3-3" name="演讲台" value="adv"><label class="form-check-label" for="formCheck-3" style="width:58px;height:38px;">演讲台</label></div>
                                        <div class="form-check"
                                            style="width:88px;"><input class="form-check-input" type="checkbox" id="formCheck-4-4" name="其它" value="adv"><label class="form-check-label" for="formCheck-4">其它</label></div>
                                    </div>
                                </div> -->
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal-footer"><button class="btn btn-primary" type="button" id="addConfirm">确认</button></div>
        </div>
    </div>
</div>


<!-- 弹出删除确认框 -->
<div class="modal fade" role="dialog" tabindex="-1" id="adroomdelete">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Warning</h4>
                <label id="delnotice">Label</label>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
            <div class="modal-body">
                <p>删除成功！</p>
            </div>
            <div class="modal-footer"><button class="btn btn-primary" type="button" id="addeleteroomok">确定</button></div>
        </div>
    </div>
</div>

<!-- 尾部 -->
<div class="footer-dark" style="height:190px;width: 100%; margin-top: 30px; padding:32px;position: absolute;bottom: 0;">
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
<!-- <div class="modal fade" role="dialog" tabindex="-1" id="showqcode">
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
</div> -->
<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
<!-- <script src="${pageContext.request.contextPath}/static/js/adminRoomManager.js"></script> -->
<script src="${pageContext.request.contextPath}/static/js/userMeetingNotify.js"></script>
<script src="${pageContext.request.contextPath}/static/js/host.js"></script>

<script type="text/javascript">

    $(function () {

        //显示通知
        $.ajax({

            url:"${pageContext.request.contextPath}/notice/findNoticeByUserIdAndState",
            data:{},
            success(result) {
                if(result.extendInfo.noticeSize > 0) {

                    var trHtml = "<span id=\"noticeSize\">";
                    trHtml += result.extendInfo.noticeSize;
                    trHtml += "</span>"
                    $("#notice").after(trHtml);
                }
            }

        })

        //找到所有通知
        $.ajax({

            url:"${pageContext.request.contextPath}/notice/findNoticeByUserId",
            data: {},
            success(result) {
                notices = result;
                var le = result['notice'].length;
                var l=$("#bookbody").find("tr").length;
                var s1=$("#bookt").find("tr").eq(l);

                //显示未确认的通知
                for (var i = 0; i < le; i++) {

                    if(result['notice'][i]['state'] == "0") {
                        var notice_id = result['notice'][i]['notice_id'];
                        var notice = result['notice'][i]['notice'];

                        var trHTML = "<tr>";
                        trHTML += "<td>";
                        trHTML += notice_id;
                        trHTML += "</td>";
                        trHTML += "<td>";
                        trHTML += notice;
                        trHTML += "</td>";

                        trHTML += "<td><button class=\"btn btn-primary \" type=\"button\" id=\"addMeetingRoombtn\" style=\"background-color:rgb(242,193,67);\" name=\"addm\"><i class=\"fa fa-wrench\"></i></button></td>";
                        trHTML += "</tr>";

                        l=$("#bookbody").find("tr").length;
                        $("#bookt").find("tr").eq(l).after(trHTML);
                    }
                }
            }

        })

        $.ajax({
            url:"${pageContext.request.contextPath}/notice/findNoticeByUserId",
            data: {},
            success(result) {
                //显示确认过的通知
                var le = result['notice'].length;
                var l = $("#okbody").find("tr").length;
                for (var i = 0; i < le; i++) {

                    if (result['notice'][i]['state'] == "1") {
                        var notice_id = result['notice'][i]['notice_id'];
                        var meetingroom_name = result['meetingRoom'][i]['meetingroom_name'];
                        var floor = result['meetingRoom'][i]['position_floor'];
                        var room = result['meetingRoom'][i]['position_room'];
                        var startTime = result['apply'][i]['start_time'];
                        var endTime = result['apply'][i]['end_time'];
                        var notice = result['notice'][i]['notice'];


                        var ss = new Date(startTime);
                        var s = ss.getFullYear() + "-" + (ss.getMonth() + 1) + "-" + ss.getDate() + " " + ss.getHours() + ":0" + ss.getMinutes() + ":0" + ss.getSeconds();

                        var ee = new Date(endTime);
                        var e = ee.getFullYear() + "-" + (ee.getMonth() + 1) + "-" + ee.getDate() + " " + ee.getHours() + ":0" + ee.getMinutes() + ":0" + ee.getSeconds();

                        var trHTML = "<tr>";
                        trHTML += "<td>";
                        trHTML += notice_id;
                        trHTML += "</td>";
                        trHTML += "<td>";
                        trHTML += meetingroom_name;
                        trHTML += "</td>";

                        trHTML += "<td>";
                        trHTML += floor + "楼" + room + "号房";
                        trHTML += "</td>";
                        trHTML += "<td>";
                        trHTML += s;
                        trHTML += "</td>";
                        trHTML += "<td>";
                        trHTML += e;
                        trHTML += "</td>";

                        trHTML += "<td>";
                        trHTML += notice;
                        trHTML += "</td>";

                        trHTML += "<td><button class=\"btn btn-primary\" type=\"button\" style=\"margin:-1px;padding:4px;margin-left:5px;width:37px;background-color:rgb(220,53,69);height:38px;\" name=\"delm\"><i class=\"fa fa-trash\"></i></button></td>";
                        trHTML += "</tr>";

                        l = $("#okbody").find("tr").length;
                        $("#addtables").find("tr").eq(l).after(trHTML);
                    }
                }
            }
        })


        //显示模态框
        $("#bookt").on('click', "button[name='addm']", function () {

            //var hang = $("#mbody").find("tr").eq(ind);

            var ind = $(this).parent().parent().index();

            var hang = $("#bookbody").find("tr").eq(ind);

            $("#noticeid").text(ind);
            var noticeid = hang.find("td").eq(0).html();

            $.ajax({
                url:"${pageContext.request.contextPath}/notice/findNoticeByUserId",
                data: {},
                success(result) {


                    var le = result['notice'].length;
                    var l = $("#okbody").find("tr").length;
                    for (var i = 0; i < le; i++) {
                        if(result['notice'][i]['notice_id'] == noticeid) {
                            $("#addMeetingRoomName").val(result['meetingRoom'][i]['meetingroom_name']);
                            $("#addFloor").val(result['meetingRoom'][i]['position_floor'] + "楼" + notices['meetingRoom'][i]['position_room'] + "号房");

                            var start = result['apply'][i]['start_time'];

                            var end = result['apply'][i]['end_time'];

                            var st = new Date(start);
                            var ss = st.getFullYear() + "-" + (st.getMonth() + 1) + "-" + st.getDate() + " " + st.getHours() + ":0" + st.getMinutes() + ":0" + st.getSeconds();

                            var et = new Date(end);
                            var es = et.getFullYear() + "-" + (st.getMonth() + 1) + "-" + et.getDate() + " " + et.getHours() + ":0" + et.getMinutes() + ":0" + et.getSeconds();

                            $("#starTime").val(ss);
                            $("#endTime").val(es);
                        }
                    }
                    $("#newMeetingRoom").modal("show");

                }
            })

        })

        //确认隐藏
        $('.modal-content').on('click','#addConfirm',function(){

            console.log($("#addMeetingRoomName").val());

            var ind = $("#noticeid").text();

            var hang = $("#bookbody").find("tr").eq(ind);

            var noticeid = hang.find("td").eq(0).html();

            $.ajax({

                url:"${pageContext.request.contextPath}/notice/changeState",
                data:{
                    "noticeId":noticeid
                },
                success(result) {
                    var notice_id = result['notice']['notice_id'];
                    var meetingroom_name = result['meetingRoom']['meetingroom_name'];
                    var floor = result['meetingRoom']['position_floor'];
                    var room = result['meetingRoom']['position_room'];
                    var startTime = result['apply']['start_time'];
                    var endTime = result['apply']['end_time'];
                    var notice = result['notice']['notice'];


                    var ss = new Date(startTime);
                    var s = ss.getFullYear() + "-" + (ss.getMonth() + 1) + "-" + ss.getDate() + " " + ss.getHours() + ":0" + ss.getMinutes() + ":0" + ss.getSeconds();

                    var ee = new Date(endTime);
                    var e = ee.getFullYear() + "-" + (ee.getMonth() + 1) + "-" + ee.getDate() + " " + ee.getHours() + ":0" + ee.getMinutes() + ":0" + ee.getSeconds();

                    var trHTML = "<tr>";
                    trHTML += "<td>";
                    trHTML += notice_id;
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += meetingroom_name;
                    trHTML += "</td>";

                    trHTML += "<td>";
                    trHTML += floor + "楼" + room + "号房";
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += s;
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += e;
                    trHTML += "</td>";

                    trHTML += "<td>";
                    trHTML += notice;
                    trHTML += "</td>";

                    trHTML += "<td><button class=\"btn btn-primary\" type=\"button\" style=\"margin:-1px;padding:4px;margin-left:5px;width:37px;background-color:rgb(220,53,69);height:38px;\" name=\"delm\"><i class=\"fa fa-trash\"></i></button></td>";
                    trHTML += "</tr>";

                    var l = $("#okbody").find("tr").length;
                    $("#addtables").find("tr").eq(l).after(trHTML);
                    hang.find("td").remove();

                    var noticeSize = $("#noticeSize").html();
                    noticeSize -= 1;
                    if(noticeSize == 0) {
                        $("#noticeSize").html();
                    } else {
                        $("#noticeSize").html(noticeSize);
                    }

                }

            })


            $('#newMeetingRoom').modal('hide');
        })

        //delete
        $("#addtables").on('click', "button[name='delm']", function () {

            var hang=$(this).parent().parent();
            hang.remove();
            $('#adroomdelete').modal('show');

            $.ajax({
                url:"${pageContext.request.contextPath}/notice/deleteNotice",
                data:{"noticeId":hang.find("td").eq(0).html()},
                success(result) {
                    console.log("success");
                }
            })

        })
        //删除确认
        $("#addeleteroomok").click(function () {
            $("#adroomdelete").modal("hide");
        })


    })

</script>

</body>
</html>

