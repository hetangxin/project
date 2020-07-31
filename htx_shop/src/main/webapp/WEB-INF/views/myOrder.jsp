<%--
  Created by IntelliJ IDEA.
  User: htx
  Date: 2020/6/20
  Time: 1:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" isELIgnored="false" %>
<%@ page import="com.htx.model.Order" %>
<%@ page import="com.htx.model.User" %>
<%@ page import="com.htx.service.impl.BookService" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>${user.getUserName()}</title>
    <style>
        .photo {
            margin-bottom: 10px;
            display: block !important;
            margin-right: 10px !important;
            overflow: hidden !important;
            width: 150px !important;
            height: 90px !important;
            margin-left: 40%;
        }

    </style>
</head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/reset.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/orderDetail.css" />
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<body>
<nav class="navbar">
    <div class="nav-menu">
        <ul class="menu">
            <li><a class="active" href="${pageContext.request.contextPath}/user/home">我的书城</a></li>
            <li><a href="#">购物车</a></li>
            <li><a href="#">收藏夹</a></li>
            <li><a href="#">服务区</a></li>
            <li><a href="#">足迹</a></li>
        </ul>
    </div><!-- nav-menu -->

    <div class="nav-search">
        <form action="${pageContext.request.contextPath}/order/search" method="post" id="search_form">
            <input type="search" class="searchIn" name="bookName" placeholder="请输入图书名字...">
            <button class="search-logo" id="search_btn" type="submit"><img src="<%=request.getContextPath()%>/img/search2.png"></button>
        </form>
    </div>

    <div class="nav-info">
        <a href="#" class="username">${user.getUserName()}</a>
        <a href="${pageContext.request.contextPath}/order/4" class="bookshelf">||&nbsp;&nbsp;&nbsp;我的订单</a>
        <a href="#" class="bookshelf">||&nbsp;&nbsp;&nbsp;地址管理</a>
        <a href="${pageContext.request.contextPath}/user/loginOut" class="logout">[ 退 出 ]</a>
    </div> <!-- nav-info-end -->
</nav>
<div class="person-info">
    <div class="contact">
        <div class="photo">
            <img alt="头像"  src="<%=request.getContextPath()%>/img/user/${user.getHeadImg()}.jpg" style="width: 90px !important; height: 90px !important;"/>
        </div>
        <div>
            <p style="color: rgb(94, 161, 244) !important; font-size: 22px;">${user.getUserName()}</p>
        </div>
        <div class="contant">
            <p>
                联&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;系：
                <a href="#" class="num">${user.getPhone()}</a></p>
            <p>
                邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：<a href="#"  class="address">${user.getEmail()}</a>
            </p>
            <p>
                地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：<a  href="#" class="major">${user.getAddresses().get(0).getAddress()}</a>
            </p>
        </div>
    </div>

</div>

<div id="box">
    <div id="heard">
        <a href="${pageContext.request.contextPath}/order/4"><span>所有订单</span></a>
        <span class="heardfuhao">|</span>
        <a href="${pageContext.request.contextPath}/order/0"><span>待付款</span></a>
        <span class="heardfuhao">|</span>
        <a href="${pageContext.request.contextPath}/order/1"><span>待发货</span></a>
        <span class="heardfuhao">|</span>
        <a href="${pageContext.request.contextPath}/order/2"><span>待收货</span></a>
        <span class="heardfuhao">|</span>
        <a href="${pageContext.request.contextPath}/order/3"><span>待评价</span></a>
        <span class="heardfuhao">|</span>
        <a href="#"><span>订单回收站</span></a>
    </div>
    <div class="boderx"></div>
    <div id="foot">
        <table>
            <tr class="tr1" align="center">
                <td class="td1">宝贝</td>
                <td class="td2">单价</td>
                <td class="td3">数量</td>
                <td class="td4">商品操作</td>
                <td class="td5">实付款</td>
                <td class="td6">交易状态</td>
                <td class="td7">收货地址</td>
                <td class="td8">交易操作</td>
            </tr>
            <c:forEach items="${orders}" var="order" varStatus="orderStatus">
                <tr class="tr1" >
                    <td colspan="7"><input type="checkbox"> &nbsp;&nbsp;订单号：${order.getOrderId()}</td>
                    <td align="center" rowspan="2">
                        <a href="javascript:void(0);" onclick="deleteOrder(${order.getOrderId()})">删除</a>
                    </td>
                </tr>
                <tr align="center">
                    <td align="left">
                        <a href="${pageContext.request.contextPath}/book/${order.getBookId()}" target="_blank">
                            <span class="imgs"><img class="imgstyle" src="<%=request.getContextPath()%>/img/book/${order.getBookImg()}.jpg" >
                            </span>
                        </a>
                        <span class="wenzi">${order.getBook().getBookName()}</span></td>
                    <td><span>￥${order.getBook().getPrice()}</span></td>
                    <td><span>${order.getBookNumber()}</span></td>
                    <td><span>申请售后</span></td>
                    <td><span>${order.getCost()}</span></td>
                    <c:if test="${order.getState() == 0}">
                        <td><span>待付款</span></td>
                    </c:if>
                    <c:if test="${order.getState() == 1}">
                        <td><span>待发货</span></td>
                    </c:if>
                    <c:if test="${order.getState() == 2}">
                        <td><span>待收货</span></td>
                    </c:if>
                    <c:if test="${order.getState() == 3}">
                        <td><span>待评价</span></td>
                    </c:if>
                    <td><span>${order.getAddress()}</span></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>

<div style="text-align: center;">
    <c:if test="${page.getPageNow() != 1}">
        <a href="${pageContext.request.contextPath}/order/pagePre">
            <button type="button" class="btn btn-default" style="width: 70px; height: 30px; background-color: rgb(225, 225, 225);" name="pagePre">上一页</button>
        </a>
    </c:if>
    <c:if test="${page.getPageMax() > 1}">
        <button type="button" class="btn btn-default" style="width: 35px; height: 30px; background-color: rgb(106, 196, 247);">${page.getPageNow()}</button>
    </c:if>
    <c:if test="${(page.getPageNow() != page.getPageMax()) && page.getPageMax() > 1}">
        <a href="${pageContext.request.contextPath}/order/pageNext">
            <button type="button" class="btn btn-default" style="width: 70px; height: 30px; background-color: rgb(225, 225, 225);">下一页</button>
        </a>
    </c:if>
</div>

<footer style="text-align: center">
    <a href="#">©2018-2020 HTX书城</a>
    <a href="#">意见反馈&nbsp;&nbsp;&nbsp;联系我们&nbsp;&nbsp;&nbsp;隐私权声明&nbsp;&nbsp;&nbsp;使用条款</a>
</footer>

<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.2.js"></script>
<script type="text/javascript">

    function deleteOrder(id) {
        var r = window.confirm("确定要删除此订单吗？");
        //当选择确认按钮时，执行if语句操作
        if(r){
            //执行删除操作路径

            var path = "${pageContext.request.contextPath}/order/deleteOrder/m";

            var url = path.concat(id);

            //向服务器传递并接收返回信息
            $.post(url,function(result){
                location.reload();
            });
        }
    }



</script>

</body>
</html>
