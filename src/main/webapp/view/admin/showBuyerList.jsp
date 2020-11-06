<%--
  Created by IntelliJ IDEA.
  User: adminn
  Date: 11/5/2020
  Time: 8:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%--<!DOCTYPE html>--%>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Admin Page</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="/show-buyer-list">Buyer List</a></li>
            <%--      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>--%>
            <%--        <ul class="dropdown-menu">--%>
            <%--          <li><a href="#">Page 1-1</a></li>--%>
            <%--          <li><a href="#">Page 1-2</a></li>--%>
            <%--          <li><a href="#">Page 1-3</a></li>--%>
            <%--        </ul>--%>
            <%--      </li>--%>
            <li><a href="#">Shop List</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/shopee"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
        </ul>
    </div>
</nav>

<div class="container">
    <h3>BUYER LIST</h3>
    <p>The .navbar-right class is used to right-align navigation bar buttons.</p>
    <c:forEach items="${buyer}" var="l">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">${l.userID}</th>
                <th scope="col">${l.userEmail}</th>
                <th scope="col">${l.userPass}</th>
                <th scope="col">${l.userRole}</th>
                <th scope="col">${l.phoneNumber}</th>
                <th scope="col">${l.userName}</th>
            </tr>
            </thead>
        </table>
    </c:forEach>
</div>

</body>
</html>







