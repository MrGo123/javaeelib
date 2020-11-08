<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>逊🐎商城</title>
    <style type="text/css">
        #form1 {
        }

        #form1 #form1 {
            font-size: 14px;
        }

        .blockCenter {
            text-align: center;
        }

        .blockCenter {
            text-align: center;
        }

        #searchArea {
            width: 540px;
            height: 30px;
        }

        #search_button {
            width: 60px;
            height: 37px;
        }

        #goodsClassify {
            width: 150px;
            height: 25px;
            border: none;
        }

        #myAcount {
            border: none;
        }

        #shoppingCar {
            border: none;
        }

        #hopeList {
            border: none;
        }
        table{

        }
    </style>
    <script>
        function check(searchArea) {
            if (searchArea.value.length > 10 || searchArea.value.length < 2) {
                alert("字符数须大于2小于10！请按要求输入");
                return false;
            }
            return true;
        }
    </script>
</head>

<body style="background-color: #EBF5FB;text-align: center">
<br/>
<br/>
<table width="1377" border="0">
    <tr>
        <th width="52" scope="col">&nbsp;</th>
        <th width="167" scope="col"><img src="images/page3/logo.png" width="123" height="52"/></th>
        <th width="94" scope="col"><a href="./myAmazon">我的亚马逊</a></th>
        <th width="90" scope="col"><a href="./zseckill">Z秒杀</a></th>
        <th width="84" scope="col"><a href="./giftCard">礼品卡</a></th>
        <th width="98" scope="col"><a href="./setupShop">我要开店</a></th>
        <th width="59" scope="col"><a href="./shoppingAbroad">海外购</a></th>
        <th width="59" scope="col"><a href="./help">帮助</a></th>
        <th width="109" scope="col"><a href="./inEnglish">In English</a></th>
        <th width="17"></th>
        <th colspan="5" scope="col"><img src="images/page3/logo1.png" width="457" height="58"/></th>
    </tr>
    <tr bgcolor="#85C1E9">
        <td bgcolor=" #EBF5FB">&nbsp;</td>
        <td height="42">
            <form id="form1" name="form1" method="post" action="">
                <label for="goodsClassify">浏览</label>
                <select name="goodsClassify" id="goodsClassify">
                    <option value="0">全部商品分类</option>
                    <option value="1">家居</option>
                    <option value="2">服饰</option>
                    <option value="3">运动</option>
                    <option value="4">汽车</option>
                </select>
            </form>
        </td>
        <td>
            <form id="form2" name="form2" method="post" action="">
                <label for="allClassify"></label>
                <select name="allClassify" id="allClassify">
                    <option value="0">全部分类</option>
                    <option value="1">家居</option>
                    <option value="2">服饰</option>
                    <option value="3">运动</option>
                    <option value="4">汽车</option>
                </select>
            </form>
        </td>
        <td colspan="8">
            <form id="form3" name="form3" method="get" action="/searchByName">
                <label for="searchArea"></label>
                <input onclick="check(searchArea)" type="text" name="searchArea" id="searchArea"/>
                <input id="search_button" type="submit" value="搜索"/>
            </form>
        </td>
        <td width="171">
            <form id="form5" name="form5" method="post" action="">
                <label for="myAcount"></label>
                <select name="myAcount" id="myAcount">
                    <option value="0">您好，登录 我的账户</option>
                </select>
            </form>
        </td>
        <td width="137">
            <form name="shoppingcar" action="/shoppingcar" method="post">
                <a href="/shoppingcar"><img src="images/page3/logo2.png" width="60" height="47"/>
                    <select name="shoppingCar" id="shoppingCar">
                        <option>购物车</option>
                    </select></a>
            </form>

        </td>
        <td width="97">
            <form id="form7" name="form7" method="post" action="">
                <label for="hopeList"></label>
                <select name="hopeList" id="hopeList">
                    <option value="0">心愿单</option>
                    <option value="1">家居</option>
                    <option value="2">服饰</option>
                    <option value="3">运动</option>
                    <option value="4">汽车</option>
                </select>
            </form>
        </td>
    </tr>
</table>

<table width="1379" border="0">
    <tr>
        <td width="15">&nbsp;</td>
        <td width="59">&nbsp;</td>
        <td width="93">&nbsp;</td>
        <td width="6">&nbsp;</td>
        <td width="111" class="blockCenter"><a href="./importCollection">进口采集</a></td>
        <td width="98" class="blockCenter"><a href="./ebook">电子书</a></td>
        <td width="88" class="blockCenter"><a href="./kindle">Kindle</a></td>
        <td width="80" class="blockCenter"><a href="./readapp">阅读软件</a></td>
        <td width="116" class="blockCenter"><a href="./mobileClient">移动客户端</a></td>
        <td width="62"><a href="./giftCard">礼品卡</a></td>
        <td width="87" class="blockCenter"><a href="./giftCard"></a></td>
        <td width="48">&nbsp;</td>
        <td width="23">&nbsp;</td>
        <td colspan="5" rowspan="4"><img src="images/page3/logo4.png" width="369" height="89"/></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td colspan="10" rowspan="10"><img src="images/page3/logo3.png" width="823" height="218"/></td>
        <td rowspan="10">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td width="94">&nbsp;</td>
        <td width="41">&nbsp;</td>
        <td width="7">&nbsp;</td>
        <td width="36">&nbsp;</td>
        <td width="241">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td colspan="5" rowspan="14"><img src="images/page3/logo5.png" width="371" height="310"/></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="blockCenter">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="blockCenter"><a href="./digitalVideo">数码影音</a></td>
        <td class="blockCenter"><a href="./homeTools">家居厨具</a></td>
        <td class="blockCenter"><a href="./fashionClothe">流行服饰</a></td>
        <td class="blockCenter"><a href="./promotion">促销</a></td>
        <td class="blockCenter"><a href="./food">食品</a></td>
        <td class="blockCenter"><a href="./beautifulMakeup">美妆</a></td>
        <td class="blockCenter"><a href="./toy">玩具</a></td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td colspan="10" rowspan="10"><img src="images/page3/good.png" width="823" height="216"/></td>
        <td rowspan="10">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td colspan="5" rowspan="4"><img src="images/page3/good1.png" width="371" height="73"/></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="blockCenter">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td height="25">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td class="blockCenter">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

<table width="1380" border="0">

    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td><img src="images/page3/logo6.png" width="32" height="37"/> 为你推荐</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>

    <tr>
        <td width="1">&nbsp;</td>
        <td width="12">&nbsp;</td>
        <td width="48">&nbsp;</td>
        <td rowspan="5"><img src="images/page3/good2.png" width="208" height="124"/></td>
        <td colspan="3" rowspan="5"><img src="images/page3/logo8.png" width="241" height="129"/></td>
        <td colspan="2" rowspan="5"><img src="images/page3/logo7.png" width="246" height="127"/></td>
        <td colspan="2" rowspan="5"><img src="images/page3/logo9.png" width="235" height="117"/></td>
        <td width="18">&nbsp;</td>
        <td colspan="5" rowspan="5"><img src="images/page3/good4.png" width="287" height="124"/></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td height="53">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td width="208">&nbsp;</td>
        <td width="65">&nbsp;</td>
        <td width="128">&nbsp;</td>
        <td width="46">&nbsp;</td>
        <td width="113">&nbsp;</td>
        <td width="134">&nbsp;</td>
        <td width="212">&nbsp;</td>
        <td width="27">&nbsp;</td>
        <td>&nbsp;</td>
        <td width="47">&nbsp;</td>
        <td width="15">&nbsp;</td>
        <td width="11">&nbsp;</td>
        <td width="25">&nbsp;</td>
        <td width="200">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</body>
</html>
