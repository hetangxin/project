<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>管理员--会议室管理页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/fonts/font-awesome.min.css">
    <!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/static/fonts/ionicons.min.css"> -->
    <!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lora">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700"> -->
    <!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Article-Clean.css"> -->
    <!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.min.css"> -->
    <!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Carousel_Image_Slider.css"> -->
    <!--  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Contact-FormModal-Contact-Form-with-Google-Map.css"> -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/countdown-timer.css">
    <!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/countdown-timer1.css"> -->
    <!--  <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/customHomePageMid.css"> -->
    <!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Data-Table.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Data-Table2.css"> -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Footer-Dark.css">
    <!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/homepagefoot.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/homepageMid.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/homepagewrap.css"> -->
    <!-- <link rel="stylesheet" href="https://cdn.datatables.net/1.10.15/css/dataTables.bootstrap.min.css"> -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/css/swiper.min.css">
    <!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Login-Form-Dark.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/loginOptionPageMid.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/loginPageMid.css"> -->
    <!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/MUSA_timeline.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/MUSA_timeline1.css"> -->
    <!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Newsletter-Subscription-Form.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/packetTrackerMid1.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/packetTracterMid1.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/packetTracterMid2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Profile-Edit-Form.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Profile-Edit-Form1.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/select2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/signUpPageMid.css"> -->


    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/User-Tasks-and-User-Activity-Streams---List-Group-Component.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/zzp_nav.css">
</head>

<body style="padding:-3px;">
<!-- 头部导航 -->
<nav class="navbar navbar-light navbar-expand-md bg-danger navigation-clean">
    <div class="container"><a class="navbar-brand" href="${pageContext.request.contextPath}/home"><strong>会议室预订管理系统</strong><br></a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
        <div
                class="collapse navbar-collapse" id="navcol-1">
            <ul class="nav navbar-nav ml-auto">
                <li class="nav-item" role="presentation"><a class="nav-link" href="${pageContext.request.contextPath}/adminHome">返回上一页</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="javascript:;" id="ad_nav_name">管理员admin</a></li>
                <li class="nav-item" role="presentation"><a class="nav-link" href="${pageContext.request.contextPath}/home" data-bs-hover-animate="pulse" id="ad_quit">退出</a></li>
            </ul>
        </div>
    </div>
</nav><label class="float-right" id="jinjijiuhuche2" style="margin-left:0;margin-top:20px ;height: 5px;width: 5px;"></label>
<h2 class="text-center" style="padding:30px 0px 0px 0px;">会议室管理</h2>

<!-- 修改会议室 -->
<div class="modal fade" role="dialog" tabindex="-1" id="modifyshow">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header" style="padding:15px 15px 5px 15px;">
                <h4 class="modal-title">会议室修改</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
            <div class="modal-body" style="width:492px;height:347px;padding:0px 13px 0px 13px;"><label class="invisible" id="ll2">Label</label>
                <div class="container profile profile-view" id="profile" style="padding:0px 20px 0px 20px;">
                    <form style="height:271px;">
                        <div class="form-row profile-row">
                            <div class="col-md-8 col-lg-12">
                                <div class="form-group" style="margin-bottom:0px;height:74px;"><label>会议室名称</label><input class="form-control" type="text" id="alterMeetingRoomName"  autocomplete="off" required="" name="alterMeetingRoomName" readonly="readonly"></div>
                                <div class="form-row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="form-group"><label>位置（楼）</label><input class="form-control" type="text" id="alterFloor" name="alterFloor"></div>
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <div class="form-group"><label>位置（号）</label><input class="form-control" type="text" id="alterRoomNumber" name="alterRoomNumber"></div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="form-group"><label>可容纳人数（人）</label><input class="form-control" type="text" id="alterCapacity" name="alterCapacity" autocomplete="off" required=""></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check" style="margin-left:-4px;width:111px;"><input class="form-check-input" type="checkbox" id="formCheck-1" style="padding-left:-22px;" name="多媒体" value="dv"><label class="form-check-label" for="formCheck-1">多媒体</label></div>
                                        <div class="form-check" style="width:87px;"><input class="form-check-input" type="checkbox" id="formCheck-2" name="白板" value="dv"><label class="form-check-label" for="formCheck-2" name="白板">白板</label></div>
                                        <div class="form-check" style="width:113px;height:24px;"><input class="form-check-input" type="checkbox" id="formCheck-3" name="演讲台" value="dv"><label class="form-check-label" for="formCheck-3" style="width:58px;height:38px;">演讲台</label></div>
                                        <div class="form-check"
                                             style="width:88px;"><input class="form-check-input" type="checkbox" id="formCheck-4" name="其它" value="dv"><label class="form-check-label" for="formCheck-4">其它</label></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal-footer"><button class="btn btn-light" type="button" data-dismiss="modal">取消</button><button class="btn btn-primary" type="button" id="changem">确定</button></div>
        </div>
    </div>
</div>
<div class="table-responsive" id="addtables" style="padding: 20px 80px 0 150px;margin-bottom: -20px;">
    <table class="table">
        <thead>
        <tr>
<%--            <th></th>--%>
            <th>会议室名</th>
            <th>位置（楼）</th>
            <th>位置（房间号）</th>
            <th>可容纳人数</th>
            <th>会议室设备</th>
            <th>功能</th>
        </tr>
        </thead>
        <tbody id="mbody">
        <tr></tr>
        </tbody>
    </table>
</div>


<!-- 弹出删除确认框 -->
<div class="modal fade" role="dialog" tabindex="-1" id="adroomdelete">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Warning</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
            <div class="modal-body">
                <p>删除成功！</p>
            </div>
            <div class="modal-footer"><button class="btn btn-primary" type="button" id="addeleteroomok">确定</button></div>
        </div>
    </div>
</div>

<!-- 增加会议室按钮 -->
<div class="row" style="margin:0px 0px;">
    <div class="col" style="margin-left:-50px;">
        <button class="btn btn-primary float-right" type="button" id="addMeetingRoombtn" style="margin:5px 80px 0px 0px;background-color:rgb(77,154,85);"><i class="fa fa-plus-circle" style="margin-left:3px;"></i></button>
    </div>
</div>
<!-- 增加会议室 -->
<div class="modal fade" role="dialog" tabindex="-1" id="newMeetingRoom">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">增加会议室</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
            <div class="modal-body">
                <div class="container profile profile-view" id="" style="padding:0px 20px 0px 20px;">
                    <form style="height:271px;">
                        <div class="form-row profile-row">
                            <div class="col-md-8 col-lg-12">
                                <div class="form-group"><label>会议室名称</label><input class="form-control" type="text"  id="addMeetingRoomName" autocomplete="off" required="" name="addmeetingRoomName" readonly="readonly"></div>
                                <div class="form-row">
                                    <div class="col-sm-12 col-md-6">
                                        <div class="form-group"><label>位置（楼）</label><input class="form-control" type="text" id="addFloor" name="addFloor"></div>
                                    </div>
                                    <div class="col-sm-12 col-md-6">
                                        <div class="form-group"><label>位置（号）</label><input class="form-control" type="text" id="addRoomNumber" name="addRoomNumber"></div>
                                    </div>
                                </div>
                                <div class="form-row">
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
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal-footer"><button class="btn btn-light" type="button" data-dismiss="modal">返回</button><button class="btn btn-primary" type="button" id="addConfirm">确认</button></div>
        </div>
    </div>
</div>
<div class="modal fade" role="dialog" tabindex="-1" id="readydel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Title</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
            <div class="modal-body">
                <p>删除成功！！！</p>
            </div>
            <div class="modal-footer"><button class="btn btn-light" type="button" data-dismiss="modal">确定</button></div>
        </div>
    </div>
</div>
<div class="modal fade" role="dialog" tabindex="-1" id="faildel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Title</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
            <div class="modal-body">
                <p>删除失败，会议室存在未处理的会议！！！！</p>
            </div>
            <div class="modal-footer"><button class="btn btn-light" type="button" data-dismiss="modal">确定</button></div>
        </div>
    </div>
</div>
<!-- 尾部 -->
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
<!-- <script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script> -->
<!-- <script src="${pageContext.request.contextPath}/static/js/adminHomepage.js"></script> -->
<!-- <script src="${pageContext.request.contextPath}/static/js/adminLoginPage.js"></script> -->
<script src="${pageContext.request.contextPath}/static/js/adminRoomManager.js"></script>
<!-- <script src="${pageContext.request.contextPath}/static/js/adminUserManager.js"></script> -->
<!-- <script src="${pageContext.request.contextPath}/static/js/bs-animation.js"></script>
<script src="${pageContext.request.contextPath}/static/js/email.js"></script>-->
<script src="${pageContext.request.contextPath}/static/js/host.js"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.1.1/aos.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/3.3.1/js/swiper.jquery.min.js"></script> -->
<!-- <script src="${pageContext.request.contextPath}/static/js/jquery.qrcode.min.js"></script> -->
<!-- <script src="${pageContext.request.contextPath}/static/js/userBooking.js"></script>
<script src="${pageContext.request.contextPath}/static/js/userBookingHistory.js"></script>
<script src="${pageContext.request.contextPath}/static/js/userBookingTime.js"></script>
<script src="${pageContext.request.contextPath}/static/js/userHomepage.js"></script>
<script src="${pageContext.request.contextPath}/static/js/userInfo.js"></script>
<script src="${pageContext.request.contextPath}/static/js/userLoginPage.js"></script> -->
</body>

<script type="text/javascript">
    $(function () {
        //查找所有会议室
        $.ajax({
            url:"${pageContext.request.contextPath}/meetingRoom/findAll",
            data:{},
            success(response) {
                console.log(response);
                //alert(response['data'][0]['password']);
                var le = response.length;
                var l = $("#mbody").find("tr").length;
                var s1 = $("#addtables").find("tr").eq(l);
                for (var i = 0; i < le; i++) {
                    var mid = response[i]['meetingroom_name'];
                    var floor = response[i]['position_floor'];
                    var room = response[i]['position_room'];
                    var lim = response[i]['number'];
                    var dev = response[i]['equipment'];

                    var trHTML = "<tr>";
                    // trHTML += "<td>"
                    // trHTML += "<input type='checkbox' name='xuan'/>";
                    // trHTML += "</td>"
                    trHTML += "<td>";
                    trHTML += mid;
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += floor;
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += room;
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += lim;
                    trHTML += "</td>";

                    trHTML += "<td>"
                    trHTML += dev;
                    trHTML += "</td>"
                    trHTML += "<td>";

                    trHTML += "<button class='btn btn-primary' type='button' style='background-color:rgb(242,193,67);'name='addm'><i class='fa fa-wrench'></i></button>"
                    trHTML += "<button class='btn btn-primary' type='button' style='margin:-1px;padding:4px;margin-left:5px;width:37px;background-color:rgb(220,53,69);height:38px;'name='delm'><i class='fa fa-trash'></i></button>"
                    trHTML += "</td></tr>";
                    l = $("#mbody").find("tr").length;
                    $("#addtables").find("tr").eq(l).after(trHTML);
                }
            }
        })

        //修改会议室
        $("#changem").click(function () {
            var ind = $("#ll2").text();
            var hang = $("#mbody").find("tr").eq(ind);


            var meetingRoomName = "会议室" + $("#alterFloor").val() * 10 + $("#alterRoomNumber").val();

            var ll = "";
            $("input[type='checkbox'][value='dv']:checked").each(function () {
                ll += $(this).attr('name') + " ";
                //window.alert($(this).attr('name'))
            });
            hang.find("td").eq(4).html(ll);
            $("#modifyshow").modal("hide");

            $.ajax({
                url:"${pageContext.request.contextPath}/meetingRoom/update",
                type:"POST",
                data:{
                    "meetingroom_name": $("#alterMeetingRoomName").val(),
                    "position_floor": $("#alterFloor").val(),
                    "position_room": $("#alterRoomNumber").val(),
                    "number": $("#alterCapacity").val(),
                    "equipment": ll
                },
                success(response) {
                    if(response.code == 100) {
                        hang.find("td").eq(0).html(meetingRoomName);
                        hang.find("td").eq(1).html($("#alterFloor").val());
                        hang.find("td").eq(2).html($("#alterRoomNumber").val());
                        hang.find("td").eq(3).html($("#alterCapacity").val());
                        hang.find("td").eq(4).html(ll);
                        window.alert("更新成功");
                    } else {
                        window.alert(result.extendInfo.updateError);
                    }
                }
            })
        })

        //delete
        $("#addtables").on('click', "button[name='delm']", function () {
            var hang = $(this).parent().parent();

            $.ajax({
                url:"${pageContext.request.contextPath}/meetingRoom/delete",
                data:{"meetingRoomName":hang.find("td").eq(0).html()},
                success(result) {
                    if(result.code == 100) {
                        $("#readydel").modal('show');
                        hang.remove();
                    } else {
                        $("#faildel").modal('show');
                    }
                }
            })
        })
        //增加会议室
        $('#addConfirm').click(function () {
                $('#newMeetingRoom').modal('hide');
                var l = $("#mbody").find("tr").length;
                var s1 = $("#addtables").find("tr").eq(l);
                var ll = "";
                $("input[type='checkbox'][value='adv']:checked").each(function () {
                    ll += $(this).attr('name') + " ";
                });

                var trHTML = "<tr>";
                // trHTML += "<td>"
                // trHTML += "<input type='checkbox' name='xuan'/>";
                // trHTML += "</td>"
                trHTML += "<td>";
                trHTML += "会议室" + $("#addFloor").val() * 10 + $('#addRoomNumber').val();
                trHTML += "</td>";
                trHTML += "<td>";
                trHTML += $("#addFloor").val();
                trHTML += "</td>";
                trHTML += "<td>";
                trHTML += $('#addRoomNumber').val();
                trHTML += "</td>";
                trHTML += "<td>";
                trHTML += $('#addCapacity').val();
                trHTML += "</td>";

                trHTML += "<td>"
                trHTML += ll;
                trHTML += "</td>"
                trHTML += "<td>";

                trHTML += "<button class='btn btn-primary' type='button' style='background-color:rgb(242,193,67);'name='addm'><i class='fa fa-wrench'></i></button>"
                trHTML += "<button class='btn btn-primary' type='button' style='margin:-1px;padding:4px;margin-left:5px;width:37px;background-color:rgb(220,53,69);height:38px;'name='delm'><i class='fa fa-trash'></i></button>"
                trHTML += "</td></tr>";


                $.ajax({
                    url:"${pageContext.request.contextPath}/meetingRoom/add",
                    data:{
                        "meetingroom_name": "会议室" + $("#addFloor").val() * 10 + $('#addRoomNumber').val(),
                        "position_floor": $("#addFloor").val(),
                        "position_room":$('#addRoomNumber').val(),
                        "number": $('#addCapacity').val(),
                        "equipment": ll
                    },
                    type:"POST",
                    success(result) {
                        if(result.code == 100) {
                            window.alert("增加成功！！！");
                            $("#addtables").find("tr").eq(l).after(trHTML);
                            s1 = $("#mbody").find("tr").eq(l);
                            s1.find("td").eq(1).html(result['meetingroom_name']);
                        } else {
                            window.alert(result.extendInfo.addError);
                        }
                    }
                })
            }
        );

    })
</script>

</html>
