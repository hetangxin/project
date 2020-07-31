<%--
  Created by IntelliJ IDEA.
  User: htx
  Date: 2020/6/27
  Time: 22:56
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
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.2.js"></script>
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
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

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="carousel slide" id="carousel-850757">
                <ol class="carousel-indicators">
                    <li data-slide-to="0" data-target="#carousel-850757">
                    </li>
                    <li data-slide-to="1" data-target="#carousel-850757">
                    </li>
                    <li data-slide-to="2" data-target="#carousel-850757" class="active">
                    </li>
                </ol>
                <div class="carousel-inner">
                    <div class="item">
                        <img alt="" style="width: 1140px; height: 330px" src="${pageContext.request.contextPath}/img/carousel/one.jpg" />
                    </div>
                    <div class="item">
                        <img alt="" style="width: 1140px; height: 330px" src="${pageContext.request.contextPath}/img/carousel/two.jpg" />
                    </div>
                    <div class="item active">
                        <img alt="" style="width: 1140px; height: 330px" src="${pageContext.request.contextPath}/img/carousel/three.jpg" />
                    </div>
                </div> <a class="left carousel-control" href="#carousel-850757" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-850757" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>
    </div>
</div>

<div class="container" style="margin-top: 20px">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="row">
                <c:forEach items="${books}" var="book">
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
                                    <h5 style="text-align: right">
                                        库存：
                                            ${book.getStock()}
                                    </h5>
                                    <p>
                                        <input type="button" class="btn btn-primary" value="购买" onclick="buyBook('${book.getBookId()}', '${book.getBookName()}', '${book.getPrice()}')">
                                    </p>
                                </div>
                            </div>
                        </div>
                </c:forEach>
            </div>
        </div>
    </div>
        <div class="modal fade" id="empAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">书籍信息</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal" id="buy_form">
                            <div class="form-group">
                                <label for="buyid" class="col-sm-2 control-label">书籍编号</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="empName" id="buyid" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="buyName" class="col-sm-2 control-label">书籍姓名</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="email" id="buyName" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="buyNum" class="col-sm-2 control-label">购买数量</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="email" id="buyNum" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="address" class="col-sm-2 control-label">收货地址</label>
                                <div class="col-sm-10">
                                    <select class="form-control" id="address" name="deptId">
                                        <c:forEach items="${address}" var="address">
                                            <option value="${address.getAddress()}">${address.getAddress()}</option>
                                        </c:forEach>
                                        <%--                                    <option value="">钦州</option>--%>
                                        <%--                                    <option value="">贺州</option>--%>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="email_add_input" class="col-sm-2 control-label">总价</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="email" id="buycost" readonly="readonly"/>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal" id="close_btn">关闭</button>
                        <button type="button" class="btn btn-primary" data-dismiss="modal" id="buy_btn">购买</button>
                    </div>
                </div>
            </div>
        </div>



<footer style="text-align: center">
    <a href="#">©2018-2020 HTX书城</a>
    <a href="#">意见反馈&nbsp;&nbsp;&nbsp;联系我们&nbsp;&nbsp;&nbsp;隐私权声明&nbsp;&nbsp;&nbsp;使用条款</a>
</footer>
<script type="text/javascript">

    var buyprice;

    function buyBook(bookid, bookname, bookprice) {

        buyprice = bookprice;

        $("#buyid").val(bookid)
        $("#buyName").val(bookname)

        $("#buyid").attr("readonly","readonly")//将input元素设置为readonly
        $("#buyName").attr("readonly","readonly")//将input元素设置为readonly

        $('#empAddModal').modal({
            backdrop:false
        })
    }

    $("#buyNum").keyup(function () {
        $("#buycost").val(buyprice * $("#buyNum").val())
        $("#buycost").attr("readonly","readonly")//将input元素设置为readonly
    })

    $("#buy_btn").click(function () {

        $.ajax({
            url:"${pageContext.request.contextPath}/book/buyBook?buyid=" + $("#buyid").val() + "&buynum=" + $("#buyNum").val() + "&address=" + $("#address").val(),
            type:"POST",
            data:{},
            success(result) {
                if(result.code == 100) {
                    location.reload();
                    window.alert("购买成功");
                } else {
                    window.alert(result.extendInfo.buyerror);
                }
            }
        })
        $("#buyid").val("")
        $("#buyNum").val("")
        $("#buyName").val("")
        $("#buycost").val("")
    })


    $("#close_btn").click(function () {
        $("#buyid").val("")
        $("#buyNum").val("")
        $("#buyName").val("")
        $("#buycost").val("")
    })


</script>
</body>
</html>
