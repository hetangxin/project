<%--
  Created by IntelliJ IDEA.
  User: htx
  Date: 2020/6/28
  Time: 0:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" isELIgnored="false" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>${user.getUserName()}</title>
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
        <form action="${pageContext.request.contextPath}/book/search" method="post" id="search_form">
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

<div class="container" style="margin-top: 20px">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="row">
                <c:forEach items="${searchBook}" var="book">
                    <div class="col-md-3">
                        <div class="thumbnail">
                            <a href="${pageContext.request.contextPath}/book/${book.getBookId()}" target="_blank">
                                <img alt="300x200" src="${pageContext.request.contextPath}/img/book/${book.getBookImg()}.jpg" />
                            </a>
                            <div class="caption">
                                <h3>
                                        ${book.getBookName()}
                                </h3>
                                <h5 style="text-align: right">
                                    作者：
                                        ${book.getAuthor()}
                                </h5>
                                <p>
                                    <a class="btn btn-primary" href="#">购买</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>

<footer style="text-align: center">
    <a href="#">©2018-2020 HTX书城</a>
    <a href="#">意见反馈&nbsp;&nbsp;&nbsp;联系我们&nbsp;&nbsp;&nbsp;隐私权声明&nbsp;&nbsp;&nbsp;使用条款</a>
</footer>

</body>
</html>
