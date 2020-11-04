<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.util.List,com.sustart.Model.Car" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%--    <meta http-equiv="refresh" content="5;url=listStudent">--%>
    <title>Car</title>
    <style>
        .blockCenter{
            text-align: center;
        }
    </style>
</head>
<body>
<h2 class="blockCenter">我的购物车</h2>
<br>
<hr>
<br>
<%--查找--%>
<div class="blockCenter">

    <%--todo1查找商品--%>
    <form action="/searchCar" method="get">
        <label>商品编号</label><input type="text" name="search_car_id" id="search_car_id">
        <label>商品名称</label><input type="text" name="search_car_name" id="search_car_name">
        <input type="submit" name="search_button" id="search_button" value="搜索">
    </form>
</div>
<%--todo1展示购物车商品信息，通过从后端得到list用jsp展示。--%>
<br>
<br>
<table class="blockCenter" align="center">
    <tr>
        <td>商品编号</td>
        <td>商品名称</td>
        <td>商品价格</td>
        <td>商品原价</td>
        <td>商品特性</td>
        <td>商品详细信息</td>
        <td>预购数量</td>
    </tr>
    <% int sumNum=0;
    %>
    <c:forEach items="${list}" var="car">
        <tr>
            <td>${car.id}</td>
            <td>${car.name}</td>
            <td>${car.price}</td>
            <td>${car.originalPrice}</td>
            <td>${car.characters}</td>
            <td>${car.detail}</td>
            <td>${car.num}</td>
        </tr>
    </c:forEach>
</table>
<div class="blockCenter">
    <p>商品总数：${sumNum} 件
    结算：${sumCharge} 元
    平均：${average} 元
    </p>
</div>

<%--todo2展示购物车商品数量、总价等。通过直接在本页面用jsp或js计算并显示--%>


<%--todo3继续购物，调转至添加商品页面addProduct--%>
<div class="blockCenter">
    <a href="/addProduct">
        <button>继续添加商品</button>
    </a>
</div>



</body>
</html>