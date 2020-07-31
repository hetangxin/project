<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>用户--个人中心</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Profile-Edit-Form.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/Profile-Edit-Form1.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/select2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/signUpPageMid.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/User-Tasks-and-User-Activity-Streams---List-Group-Component.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/zzp_nav.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/a-index.css" />

</head>

<body>
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
<div class="container">
    <div class="modal fade" role="dialog" tabindex="-1" id="modal1">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4>Contact Information</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
                <div class="modal-body">
                    <form method="get" id="contactForm"><input class="form-control" type="hidden" name="Introduction" value="This email was sent from www.mywebsite.com"><input class="form-control" type="hidden" name="subject" value="My Contact Form"><input class="form-control" type="hidden"
                                                                                                                                                                                                                                                                 name="to" value="email@mywebsite.com">
                        <div class="form-row">
                            <div class="col-md-6">
                                <div id="modal-successfail"></div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-6" id="modal-message">
                                <fieldset>
                                    <legend><i class="fa fa-envelope"></i> Contact Us</legend>
                                </fieldset>
                                <div class="form-group has-feedback"><label for="modal_from_name">Name</label><input class="form-control" type="text" name="from_name" required="" placeholder="Full Name" id="modal_from_name" tabindex="-1"></div>
                                <div class="form-group has-feedback"><label for="modal_from_email">Email</label><input class="form-control" type="email" name="from_email" required="" placeholder="Email Address" id="modal_from_email"></div>
                                <div class="form-row">
                                    <div class="col-sm-6">
                                        <div class="form-group has-feedback"><label for="modal_from_phone">Phone</label><input class="form-control" type="text" name="from_phone" placeholder="Primary Phone" id="modal_from_phone"></div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group"><label for="modal_calltime">Best Time to Call</label><select class="form-control" name="Call Time" id="modal_calltime"><optgroup label="This is a group"><option value="12" selected="">This is item 1</option><option value="13">This is item 2</option><option value="14">This is item 3</option></optgroup></select></div>
                                    </div>
                                </div>
                                <div class="form-group"><label for="modal_comments">Comments</label><textarea class="form-control" rows="5" name="Comments" placeholder="Enter comments here" id="modal_comments"></textarea></div>
                                <div class="form-group"><button class="btn btn-primary btn-block" type="submit">Send <i class="fa fa-chevron-circle-right"></i></button></div>
                                <hr>
                            </div>
                            <div class="col-md-6">
                                <fieldset>
                                    <legend> <i class="fa fa-location-arrow"></i> Locate Us</legend>
                                </fieldset>
                                <div class="form-row">
                                    <div class="col-md-12">
                                        <div class="static-map"><a href="https://www.google.com/maps/place/2+15th+St+NW+Washington+DC+20024" target="_blank"><img class="img-fluid" src="http://maps.googleapis.com/maps/api/staticmap?autoscale=2&amp;size=600x210&amp;maptype=roadmap&amp;format=png&amp;visual_refresh=true&amp;markers=size:mid%7Ccolor:0xff0000%7Clabel:%7C582+1801+W+International+Speedway+Blvd+Daytona+Beach+FL+32114&amp;zoom=12" alt="Google Map of Washington Monument"></a></div>
                                    </div>
                                    <div class="col-sm-6">
                                        <fieldset>
                                            <legend><i class="fa fa-envelope"></i> Contact Us</legend>
                                        </fieldset>
                                        <div><span><strong>Name</strong></span></div>
                                        <div><span>email@address.com</span></div>
                                        <div><span>www.awebsite.com</span></div>
                                        <hr>
                                    </div>
                                    <div class="col-sm-6">
                                        <fieldset>
                                            <legend><i class="fa fa-location-arrow"></i> Our Address</legend>
                                        </fieldset>
                                        <div><span><strong>Office Name</strong></span></div>
                                        <div><span>55 Icannot Dr.</span></div>
                                        <div><span>Daytona Beach, FL 81500</span></div>
                                        <div><abbr data-toggle="tooltip" data-placement="top" title="Office Phone: 555-867-5309">O:</abbr> 555-867-5309</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <form method="get"><input class="form-control" type="hidden" name="Introduction" value="This email was sent from www.mywebsite.com"><input class="form-control" type="hidden" name="subject" value="My Contact Form"><input class="form-control" type="hidden" name="to"
                                                                                                                                                                                                                                value="email@mywebsite.com">
        <div class="form-row">
            <div class="col-md-6">
                <div id="successfail"></div>
            </div>
        </div>
    </form>
    <div class="modal fade" role="dialog" tabindex="-1" id="modify-email">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">修改用户邮箱</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
                <div class="modal-body">
                    <div class="card">
                        <div class="card-header" style="width:464px;height:76px;">
                            <div class="col-sm-12 col-md-6">
                                <div class="form-group"><input type="password" required="" placeholder="请输入你的密码" id="your_password" name="" style="width:265px;height:47px;margin:0px;margin-bottom:-4px;"></div>
                            </div>
                        </div>
                        <div class="card-header" type="password" style="height:76px;">
                            <div class="col-sm-12 col-md-6">
                                <div class="form-group"><input type="email" placeholder="请输入新邮箱" id="new_email" name="" style="width:265px;height:47px;"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer"><button class="btn btn-light" type="button" data-dismiss="modal" id="cancel_email">取消</button><button class="btn btn-primary" type="button" id="enter_email">确认</button></div>
            </div>
        </div>
    </div>
</div>
<h2 class="text-center align-items-center align-content-center" style="margin:30px 50px 40px 40px;margin-right:40px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 个人中心</h2>
<div>
    <div class="container">
        <div class="table-responsive" style="width:578px;margin:0px;margin-left:243px;">
            <table class="table">
                <thead>
                <tr>
                    <th style="width:150px;">用户ID：</th>
                    <th id="persionID">${user.getUserId()}</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>用户名：</td>
                    <td id="persionName">${user.getUserName()}</td>
                </tr>
                <tr>
                    <td>性别：</td>
                    <td id="sex" style="width:268px;">${user.getSex()}</td>
                </tr>
                <tr>
                    <td>邮箱地址：</td>
                    <td style="width:256px;">
                        <label id="emailAddress" style="margin-left:0;height:29px;width:126px;" align = "right">
                            ${user.getEmail()}
                        </label>
                        <button class="btn btn-danger float-right" type="button" id="modify-emailbtn" style="width:65px;height:40px;margin-left:2px;font-weight:bold;">修改</button>
                    </td>
                </tr>
                <tr>
                    <td>密码：</td>
                    <td style="width:256px;">
                        <label id="userpassword" style="margin-left:0;height:29px;width:126px;" align = "right">
                            ${user.getPassword()}
                        </label>
                        <button class="btn btn-danger float-right" type="button" id="alertpassword" style="width:65px;height:40px;margin-left:2px;font-weight:bold;">修改</button>
                    </td>
                </tr>
                <tr>
                    <td>所属部门：</td>
                    <td id="department">
                        <c:if test="${user.getDept_id() == 1}">
                            策划部
                        </c:if>
                        <c:if test="${user.getDept_id() == 2}">
                            市场部
                        </c:if>
                        <c:if test="${user.getDept_id() == 3}">
                            运维部
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td>用户类型：</td>
                    <td id="userStype">
                        <c:if test="${user.getType() == 1}">
                            经理
                        </c:if>
                        <c:if test="${user.getType() == 0}">
                            普通员工
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                </tbody>
            </table>
        </div>
        <i class="fa fa-wrench" style="color:rgb(255,255,255);width:50px;"></i>
    </div>
</div>
<div class="footer-dark" style="hheight:190px;width: 100%; padding:32px;position: absolute;bottom: 0;">
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

<div class="modal fade" role="dialog" tabindex="-1" id="modify-password">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">修改用户密码</h4><button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button></div>
            <div class="modal-body">
                <div class="card">
                    <div class="card-header" style="padding-bottom:0px;">
                        <div class="col-sm-12 col-md-6">
                            <div class="form-group"><input type="password" placeholder="原密码" id="oldPassword" name="" style="width:265px;height:47px;margin-top:0px;padding-top:0px;padding-bottom:0px;"></div>
                        </div>
                    </div>
                    <div class="card-header" style="width:464px;height:76px;">
                        <div class="col-sm-12 col-md-6">
                            <div class="form-group"><input type="password" required="" placeholder="新密码" id="newPassword" name="" style="width:265px;height:47px;margin:0px;margin-bottom:-4px;"></div>
                        </div>
                    </div>
                    <div class="card-header" type="password" style="height:76px;">
                        <div class="col-sm-12 col-md-6">
                            <div class="form-group"><input type="password" placeholder="确认密码" id="checkPassword" name="" style="width:265px;height:47px;"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer"><button class="btn btn-light" type="button" data-dismiss="modal" id="cancel_password">取消</button><button class="btn btn-primary" type="button" id="enter_password">确认</button></div>
        </div>
    </div>
</div>
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
<script src="${pageContext.request.contextPath}/static/js/userLoginPage.js"></script>
<script type="text/javascript">
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

        //显示模态框
        $("#modify-emailbtn").click(function () {
            $('#modify-email').modal('show');
        })
        //显示模态框
        $("#alertpassword").click(function () {
            $("#modify-password").modal("show");
        })

        //清除值
        $("#cancel_email").click(function () {
            $("#your_password").val("");
            $("#new_email").val("");
        })

        //判断输入的密码和邮箱
        $("#enter_email").click(function () {

            var password = $("#your_password").val();

            if(password != ${user.getPassword()}) {
                window.alert("输入的密码不正确！！！");
                return false;
            }

            if($("#new_email").val().length == 0) {
                window.alert("您输入的邮箱不正确！！！");
                return false;
            }

            var reg = /^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;

            if(!reg.test($("#new_email").val())) {
                window.alert("您输入的邮箱不正确！！！");
                return false;
            }

            $.ajax({

                url:"${pageContext.request.contextPath}/user/resetEmail",
                data:{"email":$("#new_email").val()},
                success(result) {
                    window.alert("修改成功！！！");
                    location.reload();
                }

            })

            $("#your_password").val("");
            $("#new_email").val("");
        })

        $("#cancel_password").click(function () {
            $("#oldPassword").val("");
            $("#newPassword").val("");
            $("#checkPassword").val("");
        })

        //判断输入的密码和邮箱
        $("#enter_password").click(function () {

            var yourPassword = ${user.getPassword()};


            if($("#oldPassword").val() != yourPassword) {
                window.alert("输入的密码不正确！！！");
                return false;
            }

            if($("#oldPassword").val().length == 0 || $("#newPassword").val().length == 0) {
                window.alert("请输入正确的密码！！！");
                return false;
            }

            if($("#newPassword").val() != $("#checkPassword").val()) {
                window.alert("输入两次密码不一致！！！");
                return false;
            }

            $.ajax({
                url:"${pageContext.request.contextPath}/user/resetPassword",
                data:{"password":$("#newPassword").val()},
                success(result) {
                    window.alert("修改成功！！！");
                    location.reload();
                }
            })

            $("#oldPassword").val("");
            $("#newPassword").val("");
            $("#checkPassword").val("");
        })

    })
</script>
</body>
</html>
