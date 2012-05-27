<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<c:url value="/css/common.css"/>" type="text/css" />
<script type="text/javascript" src="<c:url value="/bin/jquery/jquery-1.7.2.min.js"/>"></script>
<script type="text/javascript">
$(function() {
	
});
</script>
<title>SSH权限管理系统v0.1</title>
</head>
<body>
<form action="<c:url value="/j_spring_security_check"/>" method="post">
<table class="logintable tableborder">
	<caption><h1>SSH权限管理系统v0.1</h1></caption>
	<tr>
		<th>账户：</th>
		<td><input type="text" name="j_username" id="username" /></td>
	</tr>
	<tr>
		<th>密码：</th>
		<td><input type="password" name="j_password" id="password" /></td>
	</tr>
	<tr>
		<th>验证码：</th>
		<td><input type="text" name="checkCode" size="8" id="checkCode"/></td>
	</tr>
	<tr>
		<th></th>
		<td><input id="_spring_security_remember_me" name="_spring_security_remember_me" type="checkbox" value="true"/>
		<label for="_spring_security_remember_me">记住我的登录状态</label></td>
	</tr>
	<tr>
		<td colspan="2" class="comcenter">
		<input type="submit" value="登录" />
		<input type="reset" value="重置" /></td>
	</tr>
</table>
</form>
</body>
</html>