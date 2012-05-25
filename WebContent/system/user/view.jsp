<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="<c:url value="/system/user/save.do"/>" method="post">
<input type="hidden" name="id" value="${user.id }"/>
<table>
<tr>
<th>登录帐户</th><td><input type="text" name="account" value="${user.account }" /></td>
</tr>
<tr>
<th>登录密码</th><td><input type="password" name="password" value="${user.password }" /></td>
</tr>
<tr>
<th>用户姓名</th><td><input type="text" name="fullName" value="${user.fullName }" /></td>
</tr>
<tr>
<th>手机号码</th><td><input type="text" name="cellphone" value="${user.cellphone }" /></td>
</tr>
<tr>
<th>座机号码</th><td><input type="text" name="tellphone" value="${user.tellphone }" /></td>
</tr>
<tr>
<th>电子邮件</th><td><input type="text" name="email" value="${user.email }" /></td>
</tr>
<tr>
<td colspan="2">
<input type="submit" value="保存" />&nbsp;&nbsp;
<input type="reset" value="重置" />
</td>
</tr>
</table>
</form>
</body>
</html>