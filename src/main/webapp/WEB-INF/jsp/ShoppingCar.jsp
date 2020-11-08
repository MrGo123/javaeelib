<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.util.List,com.sustart.Model.Car" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%--    <meta http-equiv="refresh" content="5;url=listStudent">--%>
    <title>Car</title>
    <script src="${pageContext.request.contextPath}/statics/js/jquery-3.5.1.js"></script>
    <style>
        .blockCenter {
            text-align: center;
        }

        table {
            border-style: solid;
            border-width: 2px;
            border-color: black;
            background-color: #EBF5FB;
            text-align: center;
            padding: 10px;
        }


        #headtitle {
            text-align: center;
        }

        #count {
            margin-top: 10px;
            margin-bottom: 10px;
        }

        #navi {
            width: auto;
            height: auto;
            text-align: center;
            background-color: #AED6F1;
            padding: 10px 0;
        }
    </style>

    <script type="text/javascript">
        function MyFunction() {
            $.post("${pageContext.request.contextPath}/carList", function (data) {
                console.log(data);
                var html = "";
                for (var i = 0; i < data.length; i++) {
                    html += "<tr>" + "<td>" + data[i].id + "</td>"
                        + "<td>" + data[i].name + "</td>"
                        + "<td>" + data[i].price + "</td>"
                        + "<td>" + data[i].originalPrice + "</td>"
                        + "<td>" + data[i].characters + "</td>"
                        + "<td>" + data[i].detail + "</td>"
                        + "<td>" + data[i].num + "</td>"
                        + "<td>" + "<a href=${pageContext.request.contextPath}/AlterCarProductNum?productId=" + data[i].id + ">" + "<button id='alterBttn'>修改" + "</button>" + "</a>" +
                        "<a href=${pageContext.request.contextPath}/DeleteCarProduct?productId=" + data[i].id + ">" + "<button id='deleteBttn'>删除" + "</button>" + "</a>" + "</td>" + "</tr>"
                }
                $("#content").html(html);
            })
        }
    </script>
</head>
<body onload="MyFunction()" style="background-color: #D6EAF8">
<div id="headtitle">
    <h2>我的购物车</h2>
</div>

<%--查找--%>
<div id="navi">
    <%--todo1查找商品--%>
    <form action="/searchCar" method="get">
        <label style="margin-right: 10px">商品编号</label><input type="text" name="search_car_id" id="search_car_id"
                                                             style="margin-right: 20px">
        <label style="margin-right: 10px">商品名称</label><input type="text" name="search_car_name" id="search_car_name"
                                                             style="margin-right: 20px">
        <input type="submit" name="search_button" id="search_button" onclick="searchResult()" value="搜索">
    </form>
</div>
<%--todo1展示购物车商品信息，通过从后端得到list用jsp展示。--%>
<br>
<br>


<table align="center">
    <tr id="title" class="td">
        <td>编号</td>
        <td>名称</td>
        <td>价格</td>
        <td>原价</td>
        <td>特性</td>
        <td>详细信息</td>
        <td>预购数量</td>
        <td>操作</td>
    </tr>
    <tbody id="content">

    </tbody>
</table>

<div class="blockCenter" id="count">
    <span style="margin-right: 30px;">商品总数：${sumNum} 件</span>
    <span style="margin-right: 30px">结算：${sumCharge} 元</span>
    <span style="margin-right: 30px">平均：${average} 元</span>
</div>

<%--todo2展示购物车商品数量、总价等。通过直接在本页面用jsp或js计算并显示--%>


<%--todo3继续购物，调转至添加商品页面addProduct--%>
<div class="blockCenter">
    <button style="width: 80px;margin-right: 50px;"><a href="/">返回首页</a></button>
    <button style="width: 80px"><a href="/addProduct">去购买</a></button>
</div>


</body>
</html>