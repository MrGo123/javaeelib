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
        .blockCenter{
            text-align: center;
        }
    </style>
</head>
<body>
<h2 class="blockCenter">商品菜单</h2>

<hr>
<br>
<div class="blockCenter">

    <%--todo1查找商品--%>
    <form action="/searchProduct" method="get">
        <label>商品编号</label><input type="text" name="search_product_id" id="search_product_id">
        <label>商品名称</label><input type="text" name="search_product_name" id="search_product_name">
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
    <% int i=0; %>
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
<p class="blockCenter">商品总数：<%=i%></p>


<%--<form method="post" action="/addProduct">--%>
<%--    <label>商品ID：</label><input name="id" type="text">--%>
<%--    <label>商品名称：</label><input name="id" type="text">--%>
<%--    <label>商品价格：</label><input name="id" type="text">--%>
<%--    <label>商品特性：</label><input name="id" type="text">--%>
<%--    <label>商品原价：</label><input name="id" type="text">--%>
<%--    <label>商品详细信息：</label><input name="id" type="text">--%>
<%--</form>--%>

<%--todo3选择商品id添加到购物车+商品数量。注意：如果继续加购已存在的商品，在后端的购物车处理上对对应商品数量加商品数量个--%>
<div class="blockCenter">
    <h3>加入购物车</h3>
    <form action="/addToCar" method="get">
        <label>商品编号</label><input type="text" name="add_product_id" id="add_product_id">
        <label>数量</label><input type="text" name="add_product_num" id="add_product_num">
        <input type="submit" name="add_product_button" id="add_prodcut_button" value="添加到购物车">
    </form>
</div>
<br>
<div class="blockCenter">
    <a href="/shoppingcar">
        <button>查看我的购物车</button>
    </a>
</div>
</body>
</html>