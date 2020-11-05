<%--
  Created by IntelliJ IDEA.
  User: adminn
  Date: 11/5/2020
  Time: 9:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Roles</title>
</head>
<body>
<h1>Choose Role</h1>
<a href="/roles?role=admin"><input type="button" name="admin" value="Admin"></a>
<a href="/roles?role=buyer"><input type="button" name="buyer" value="Buyer"></a>
<a href="/roles?role=shopOwner"><input type="button" name="shopOwner" value="Shop Owner"></a>
</body>
</html>
