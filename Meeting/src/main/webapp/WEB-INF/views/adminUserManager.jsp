<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>管理员--用户管理页面</title>
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
<!-- 头部 -->
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

<h2 class="text-center" style="padding:30px 0px 0px 0px;">用户管理</h2>

<!-- 添加用户 -->
<div class="row" style="padding: 0;width:97%;">
    <div class="col" ><label class="col-form-label float-right" id="jinjijiuhuche" style="margin-left:0;height: 5px;width: 5px;"></label></div>
</div><button class="btn btn-info float-right" type="button" id="adadduserbt" style="background-color:rgb(77,154,85);color:white;font-size:17px;height:40px;margin:0px 100px 10px 14px;">添加用户</button>
<!-- 列表表格 -->
<div class="table-responsive" id="tbs" style="padding:0px 100px 0 130px;margin-bottom: -20px;">
    <table class="table">
        <thead>
        <tr>
            <th>用户ID</th>
            <th>用户名</th>
            <th>性别</th>
            <th>邮箱&nbsp;</th>
            <th>类型</th>
            <th>部门</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody id="tbody">
        <tr id="ttt"></tr>
        </tbody>
    </table>
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
<div class="modal fade" role="dialog" tabindex="-1" id="adadduser">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">添加用户</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
            <div class="modal-body">
                <div class="container profile profile-view" id="profile">
                    <form>
                        <div class="form-row">
                            <div class="col-lg-3" style="width:122px;"><label class="col-form-label">用户ID</label></div>
                            <div class="col" style="height:49px;"><input class="form-control float-left" type="text" id="adaddID" style="width:233px;" readonly="readonly"></div>
                        </div>
                    </form>
                    <form>
                        <div class="form-row">
                            <div class="col-lg-3"><label class="col-form-label">用户名</label></div>
                            <div class="col" style="height:48px;width:233px;"><input class="form-control" type="text" id="adaddname" style="width:233px;"></div>
                        </div>
                    </form>
                    <form style="height:45px;">
                        <div class="form-row">
                            <div class="col-lg-3"><label class="col-form-label">性别</label></div>
                            <div class="col"><select class="form-control" id="adaddgender" style="width:180px;" v-model="selected"><optgroup label="性别"><option value="男">男</option><option value="女">女</option></optgroup></select></div>
                        </div>
                    </form>
                    <form>
                        <div class="form-row">
                            <div class="col-lg-3" style="width:156px;"><label class="col-form-label">用户类型</label></div>
                            <div class="col" style="height:44px;"><select class="form-control" id="adaddtype" style="width:180px;"><optgroup label="用户类型"><option value="经理">经理</option><option value="普通员工">普通员工</option></optgroup></select></div>
                        </div>
                    </form>
                    <form>
                        <div class="form-row">
                            <div class="col-lg-3"><label class="col-form-label">所属部门</label></div>
                            <div class="col"><select class="form-control" id="adadddepartment"><optgroup label="所属部门"><option value="策划部">策划部</option><option value="市场部">市场部</option><option value="运维部">运维部</option></optgroup></select></div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal-footer"><button class="btn btn-light" type="button" data-dismiss="modal">关闭</button><button class="btn btn-primary" type="button" id="adaddsave">确定</button></div>
        </div>
    </div>
</div>
<div class="modal fade" role="dialog" tabindex="-1" id="adusermodify">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">用户修改</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
            <div class="modal-body"><label class="d-none" id="lle">Label</label>
                <div class="container profile profile-view" id="profile">
                    <form>
                        <div class="form-row">
                            <div class="col-lg-3" style="width:122px;"><label class="col-form-label">用户ID</label></div>
                            <div class="col" style="height:49px;"><input class="form-control float-left" type="text" disabled="" id="admodifyID" style="width:233px;"></div>
                        </div>
                    </form>
                    <form>
                        <div class="form-row">
                            <div class="col-lg-3"><label class="col-form-label">用户名</label></div>
                            <div class="col" style="height:48px;"><input class="form-control" type="text" id="admodifyname" style="width:233px;"></div>
                        </div>
                    </form>
                    <form>
                        <div class="form-row" style="height:44px;">
                            <div class="col-lg-3"><label class="col-form-label">性别</label></div>
                            <div class="col"><select class="form-control" id="admodifygender" style="width:180px;"><optgroup label="性别"><option value="男">男</option><option value="女">女</option></optgroup></select></div>
                        </div>
                    </form>
                    <form>
                        <div class="form-row">
                            <div class="col-lg-3" style="width:156px;"><label class="col-form-label">用户类型</label></div>
                            <div class="col" style="height:44px;"><select class="form-control" id="admodifytype" style="width:180px;"><optgroup label="用户类型"><option value="经理">经理</option><option value="普通员工">普通员工</option></optgroup></select></div>
                        </div>
                    </form>
                    <form>
                        <div class="form-row">
                            <div class="col-lg-3"><label class="col-form-label">所属部门</label></div>
                            <div class="col"><select class="form-control" id="admodifydepartment" style="width:180px;"><optgroup label="所属部门"><option value="策划部">策划部</option><option value="市场部">市场部</option><option value="运维部">运维部</option></optgroup></select></div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal-footer"><button class="btn btn-light" type="button" data-dismiss="modal">退出</button><button class="btn btn-primary" type="button" id="confirmbtn">确定</button></div>
        </div>
    </div>
</div>
<div class="modal fade" role="dialog" tabindex="-1" id="preview">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Tips</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
            <div class="modal-body">
                <p>修改成功！</p>
            </div>
            <div class="modal-footer"><button class="btn btn-primary" type="button" id="yesbtn">确定</button></div>
        </div>
    </div>
</div>
<div class="modal fade" role="dialog" tabindex="-1" id="previewx">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Tips</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
            <div class="modal-body">
                <p>删除成功！</p>
            </div>
            <div class="modal-footer"><button class="btn btn-primary" type="button" id="exitbtn">确定</button></div>
        </div>
    </div>
</div>
<div class="modal fade" role="dialog" tabindex="-1" id="md">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Modal Title</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
            <div class="modal-body"><label id="l1">Label</label>
                <p>The content of your modal.</p><input type="text" id="le"><input type="text" id="le1"></div>
            <div class="modal-footer"><button class="btn btn-light" type="button" data-dismiss="modal">Close</button><button class="btn btn-primary" type="button">Save</button></div>
        </div>
    </div>
</div>
<script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
<!--<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>-->
<script src="${pageContext.request.contextPath}/static/js/jquery.dataTables.min.js"></script>
<!--<script src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>-->
<!-- <script src="${pageContext.request.contextPath}/static/js/adminHomepage.js"></script>
<script src="${pageContext.request.contextPath}/static/js/adminLoginPage.js"></script>
<script src="${pageContext.request.contextPath}/static/js/adminRoomManager.js"></script> -->
<script src="${pageContext.request.contextPath}/static/js/adminUserManager.js"></script>
<!-- <script src="${pageContext.request.contextPath}/static/js/bs-animation.js"></script> -->
<!--  <script src="${pageContext.request.contextPath}/static/js/email.js"></script> -->
<script src="${pageContext.request.contextPath}/static/js/host.js"></script>
<script src="${pageContext.request.contextPath}/static/js/aos.js"></script>
<script src="${pageContext.request.contextPath}/static/js/swiper.jquery.min.js"></script>
<!-- <script src="${pageContext.request.contextPath}/static/js/jquery.qrcode.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/userBooking.js"></script>
<script src="${pageContext.request.contextPath}/static/js/userBookingHistory.js"></script>
<script src="${pageContext.request.contextPath}/static/js/userBookingTime.js"></script>
<script src="${pageContext.request.contextPath}/static/js/userHomepage.js"></script>
<script src="${pageContext.request.contextPath}/static/js/userInfo.js"></script>
<script src="${pageContext.request.contextPath}/static/js/userLoginPage.js"></script> -->
</body>
<script type="text/javascript">
    $(document).ready(function()
    {

        var dept = new Array();

        //显示所有用户
        $.ajax({
            url:"${pageContext.request.contextPath}/user/findAll",
            data:{},
            success(result) {
                console.log(result);
                console.log(result.data)

                for(var i = 0; i < result.dept.length; ++i) {
                    dept[i] = result['dept'][i]['dept_name'];
                }

                console.log(dept);

                //alert(response['data'][0]['password']);
                var le=result.data.length;
                var l=$("#tbody").find("tr").length;
                var s1=$("#tbs").find("tr").eq(l);
                for(var i=0;i<le;i++)
                {
                    var uid=result['data'][i]['userId'];
                    var un=result['data'][i]['userName'];
                    var sx=result['data'][i]['sex'];

                    if(sx == "1") {
                        sx = "男";
                    } else {
                        sx = "女";
                    }

                    var ema=result['data'][i]['email'];
                    var role=result['data'][i]['type'];
                    var dep=result['data'][i]['dept_id'];

                    if(role == 1) {
                        role = "经理";
                    } else {
                        role = "普通员工";
                    }

                    dep = result[dep];

                    var trHTML = "<tr>";
                    trHTML += "<td>";
                    trHTML += uid
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += un;
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += sx
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML +=  ema;
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += role;
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += dep;
                    trHTML += "</td>";

                    trHTML += "<td>";
                    trHTML+="<button class='btn btn-primary' type='button' style='background-color:rgb(242,193,67);'name='bt'><i class='fa fa-wrench'></i></button>"
                    trHTML += "<button class='btn btn-primary' type='button' style='margin:-1px;padding:4px;margin-left:5px;width:37px;background-color:rgb(220,53,69);height:38px;'name='del'><i class='fa fa-trash'></i></button>";
                    // trHTML+='<button class="btn btn-primary" type="button" style="background-color:rgb(176,13,13);margin-left:13px;"name="resetuser"><i class="fa fa-refresh"></i></button>';
                    trHTML += "</td></tr>";

                    l=$("#tbody").find("tr").length;
                    $("#tbs").find("tr").eq(l).after(trHTML);

                }
            }
        })
        //修改用户信息
        $('#confirmbtn').click(
            function(){
                var ind=$("#lle").text();
                var hang=$("#tbody").find("tr").eq(ind);
                hang.find("td").eq(0).html($("#admodifyID").val());
                hang.find("td").eq(1).html($("#admodifyname").val());
                hang.find("td").eq(2).html($("#admodifygender").val());
                hang.find("td").eq(4).html($("#admodifytype").val());
                hang.find("td").eq(5).html($("#admodifydepartment").val());
                $('#adusermodify').modal('hide');

                // var id=parseInt($("#ID").val());
                var id=$("#admodifyID").val();
                var name=$("#admodifyname").val();
                var gender=$("#admodifygender").val();

                if(gender == "男") {
                    gender = 1;
                } else {
                    gender = 0;
                }

                var role=$("#admodifytype").val();
                var dep=$("#admodifydepartment").val();

                if(role == "经理") {
                    role = 1;
                } else {
                    role = 0;
                }

                for (var i = 0; i < dept.length; ++i) {
                    if(dep == dept[i]) {
                        dep = i + 1;
                        break;
                    }
                }

                $.ajax({
                    url:"${pageContext.request.contextPath}/user/update",
                    data:{
                        "userId": id,
                        "userName": name,
                        "sex": gender,
                        "dept_id":dep,
                        "type":role
                    },
                    success(result) {
                        window.alert("更新成功！！！");
                    }
                })
            });
        //删除用户
        $("#tbs").on('click',"button[name='del']",function(){
            var hang=$(this).parent().parent();
            hang.remove();
            $('#previewx').modal('show');
            $.ajax({
                url:"${pageContext.request.contextPath}/user/delete",
                data:{"id":hang.find("td").eq(0).html()},
                success(result) {
                }
            })
        })

        //添加用户
        $("#adaddsave").on('click',function(){
            $("#adadduser").modal("hide");

            var name = $("#adaddname").val();
            var gender = $("#adaddgender").val();
            var dep = $('#adadddepartment').val();
            var role = $('#adaddtype').val();

            if(gender == "男") {
                gender = 1;
            } else {
                gender = 0;
            }

            for (var i = 0; i < dept.length; ++i) {
                if(dep == dept[i]) {
                    dep = i + 1;
                    break;
                }
            }

            if(role == "经理") {
                role = 1;
            } else {
                role = 0;
            }

            $.ajax({

                url:"${pageContext.request.contextPath}/user/add",
                data:{
                    "userName": name,
                    "sex": gender,
                    "dept_id":dep,
                    "type":role
                },
                success(result) {
                    var l=$("#tbody").find("tr").length;
                    var s1=$("#tbs").find("tr").eq(l);
                    var trHTML = "<tr>";
                    trHTML += "<td>";
                    trHTML += result.extendInfo.userid;
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += $("#adaddname").val();
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += $("#adaddgender").val();
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += "null";
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML +=  $('#adaddtype').val();
                    trHTML += "</td>";
                    trHTML += "<td>";
                    trHTML += $('#adadddepartment').val();
                    trHTML += "</td>";

                    trHTML += "<td>";

                    trHTML+="<button class='btn btn-primary' type='button' style='background-color:rgb(242,193,67);'name='bt'><i class='fa fa-wrench'></i></button>"
                    trHTML += "<button class='btn btn-primary' type='button' style='margin:-1px;padding:4px;margin-left:5px;width:37px;background-color:rgb(220,53,69);height:38px;'name='del'><i class='fa fa-trash'></i></button>";
                    // trHTML+='<button class="btn btn-primary" type="button" style="background-color:rgb(176,13,13);margin-left:13px;"name="resetuser"><i class="fa fa-refresh"></i></button>';
                    trHTML += "</td></tr>";
                    $("#tbs").find("tr").eq(l).after(trHTML);
                    window.alert("添加成功");
                }
            })
        })

    });
</script>
</html>
