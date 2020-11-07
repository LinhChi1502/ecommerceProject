<%--
  Created by IntelliJ IDEA.
  User: adminn
  Date: 11/7/2020
  Time: 7:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Show Buy Form</title>
</head>
<body>
<form>
    <div class="form-group">
        <label>${product.getProductName()}</label>
        <input class="form-control input-sm"  type="text" name="productName" disabled>
    </div>
    <div class="form-group">
        <label >${product.getProductPrice()}</label>
        <input class="form-control"  type="text" name="productPrice" disabled>
    </div>
    <div class="form-group">
        <label >${product.getProductDescription()}</label>
        <input class="form-control input-lg"  type="text" name="productDes" disabled>
    </div>
    <div class="form-group">
        <label >${product.getShopName()}</label>
        <input class="form-control input-lg"  type="text" name="shopName" disabled>
    </div>
    <div class="form-group">
        <label >Purchase Quantity</label>
        <input class="form-control input-lg" type="text" name="quantity">
    </div>
    <div class="form-group">
        <label >Purchase Date</label>
        <input class="form-control input-lg"  type="text" name="date">
    </div>
    <div><a href="/buy-product?productid=${product.getProductID()}&buyerid=${buyer.getUserID()}}"><input type="submit" value="BUY NOW"></div></a>

</form>
</body>
</html>