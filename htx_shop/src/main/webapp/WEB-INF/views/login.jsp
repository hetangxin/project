<%--
  Created by IntelliJ IDEA.
  User: htx
  Date: 2020/6/20
  Time: 1:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" isELIgnored="false" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>HTX书城</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/reset.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/login.css">
</head>
<body>
<div id="login-container" style="margin-left: 35%">
    <h2>HTX书城</h2>
    <br />
    <form id="login_form">
        <input type="text" id="userName" name="userName" class="userName" placeholder="用户名"><br/>
        <input type="password" id="password" name="password" class="password" placeholder="密码"><br/>
        <a class="forgetPass" href="#">忘记密码?</a><br/>
        <button class="loginBtn" id="login-button" type="button">登录</button><br/>
    </form>
    <p id="errorInfo"></p>
</div>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.2.js"></script>
<script type="text/javascript">

    $(function() {
        $('#login-button').click(function (event) {
            $('#errorInfo').html("");
            var studentid_ = $('#userName').val();
            var password_ = $('#password').val();
            if (studentid_.length == 0 || password_.length == 0) {
                $('#errorInfo').html("学号或密码不能为空！");
                return false;
            }

            $.ajax({
                url:"${pageContext.request.contextPath}/user/dologin",
                type:"POST",
                data:$("#login_form").serialize(),
                success:function (result) {
                    if(result.code == 100){
                        event.preventDefault();
                        location.href = "${pageContext.request.contextPath}/book/findAll";
                    }else {
                        event.preventDefault();
                        $('#errorInfo').html(result.extendInfo.login_error);
                    }
                }
            });
        });
    })
</script>
</body>
</html>

