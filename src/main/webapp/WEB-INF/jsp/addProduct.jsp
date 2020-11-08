<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page import="java.util.List,com.sustart.Model.Product" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%--    <meta http-equiv="refresh" content="5;url=listStudent">--%>
    <title>Add product</title>
    <style>
        .blockCenter {
            text-align: center;
        }
        #headtitle {
            text-align: center;
        }
        #navi {
            width: auto;
            height: auto;
            text-align: center;
            background-color: #AED6F1;
            padding: 10px 0;
        }
        table {
            border-style: solid;
            border-width: 2px;
            border-color: black;
            background-color: #EBF5FB;
            text-align: center;
            padding: 10px;
        }
    </style>
</head>
<body style="background-color: #D6EAF8">
<div id="headtitle">
    <h2 class="blockCenter">商品菜单</h2>
</div>

<div class="blockCenter" id="navi">
    <%--todo1查找商品--%>
    <form action="/searchProduct" method="get">
        <label style="margin-right: 10px">商品编号</label><input type="text" name="search_product_id" id="search_product_id" style="margin-right: 20px">
        <label style="margin-right: 10px">商品名称</label><input type="text" name="search_product_name" id="search_product_name" style="margin-right: 20px">
        <input type="submit" name="search_button" id="search_button" value="搜索">
    </form>
</div>
<br><br>
<%--todo2展示商品--%>

<table class="blockCenter" align="center">
    <tr>
        <td>商品编号</td>
        <td>商品名称</td>
        <td>商品价格</td>
        <td>商品原价</td>
        <td>商品特性</td>
        <td>商品详细信息</td>
    </tr>
    <% int i = 0; %>
    <c:forEach items="${list}" var="product">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.originalPrice}</td>
            <td>${product.characters}</td>
            <td>${product.detail}</td>
            <% i++; %>
        </tr>
    </c:forEach>
</table>
<p class="blockCenter">商品总数：<%=i%>
</p>
<%--todo3选择商品id添加到购物车+商品数量。注意：如果继续加购已存在的商品，在后端的购物车处理上对对应商品数量加商品数量个--%>
<div class="blockCenter">
    <form action="/addToCar" method="get">
        <label style="margin-right: 10px">商品编号</label><input type="text" name="add_product_id" id="add_product_id" style="margin-right: 20px">
        <label style="margin-right: 10px">数量</label><input type="text" name="add_product_num" id="add_product_num" style="margin-right: 20px">
        <input type="submit" name="add_product_button" id="add_prodcut_button" value="添加到购物车">
    </form>
</div>
<br>
<div class="blockCenter">

        <button style="width: 80px;margin-right: 90px;"><a href="/">返回首页</a></button>
        <button style="width: 100px;margin-right: 50px;margin-left: 80px"> <a href="/shoppingcar">我的购物车</a></button>

</div>
</body>
</html>