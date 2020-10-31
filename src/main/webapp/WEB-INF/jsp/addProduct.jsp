<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%--    <meta http-equiv="refresh" content="5;url=listStudent">--%>
    <title>Add product</title>
</head>
<body>
<h3>商品菜单</h3>
<div>
    <%--todo1查找商品--%>
    <form action="">
        <input type="text" name="search_product" id="search_product">
        <input type="submit" name="search_button" id="search_button" value="搜索">
    </form>
</div>

<%--todo2展示商品--%>

<%--<form method="post" action="/addProduct">--%>
<%--    <label>商品ID：</label><input name="id" type="text">--%>
<%--    <label>商品名称：</label><input name="id" type="text">--%>
<%--    <label>商品价格：</label><input name="id" type="text">--%>
<%--    <label>商品特性：</label><input name="id" type="text">--%>
<%--    <label>商品原价：</label><input name="id" type="text">--%>
<%--    <label>商品详细信息：</label><input name="id" type="text">--%>
<%--</form>--%>

<%--todo3选择商品id添加到购物车+商品数量。注意：如果继续加购已存在的商品，在后端的购物车处理上对对应商品数量加商品数量个--%>
<div>
    <form action="">
        <label>商品编号</label><input type="text" name="product_id" id="product_id">
        <label>数量</label><input type="text" name="product_num" id="product_num">
        <input type="submit" name="add_product_button" id="add_prodcut_button" value="添加到购物车">
    </form>
</div>


</body>
</html>