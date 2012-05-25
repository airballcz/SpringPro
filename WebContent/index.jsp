<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" href="<c:url value="/css/common.css"/>" rel="stylesheet" />
<style type="text/css">
<!--
div#header {
	height: 100px;
}

div#home {
	height: 530px;
}

div#footer {
	height: 50px;
}
-->
</style>
<title>登录首页</title>
</head>
<body>
<div id="header">
<iframe name="header" src="<c:url value="/header.jsp"/>" scrolling="no" frameborder="0"></iframe>
</div>

<div id="home">
<iframe name="home" src="<c:url value="/home.jsp"/>" scrolling="no" frameborder="0"></iframe>
</div>

<div id="footer">
<iframe name="footer" src="<c:url value="/footer.jsp"/>" scrolling="no" frameborder="0"></iframe>
</div>
</body>
</html>