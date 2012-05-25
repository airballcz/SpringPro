<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/jquery-1.7.1.min.js"/>"></script>
<script type="text/javascript">
$(function() {
	
});
</script>
<title>Insert title here</title>
</head>
<body>
<form action="<c:url value="/system/user/list.do"/>">
<table>
<tr>
<td><a href="<c:url value="/system/user/view.jsp"/>">添加</a></td>
</tr>
</table>
<table>
<tr>
<td>帐号：<input type="text" name="account" value="${pageMap.user.account }" /></td><td><input type="submit" value="查询" /></td>
</tr>
</table>
<table>
<tr>
<td>序号</td><td>帐号</td><td>密码</td><td>全名</td><td>手机</td><td>座机</td><td>电子邮件</td><td>操作</td>
</tr>
<c:forEach items="${pageMap.users }" var="user" varStatus="status">
<tr>
<td>${status.count }</td><td>${user.account }</td><td>${user.password }</td><td>${user.fullName }</td><td>${user.cellphone }</td><td>${user.tellphone }</td><td>${user.email }</td>
<td><a href="<c:url value="/system/user/view.do?id=${user.id }"/>">修改</a>&nbsp;&nbsp;
<a href="<c:url value="/system/user/delete.do?id=${user.id }"/>">删除</a></td>
</tr>
</c:forEach>
</table>
<table>
<tr>
<td>
<a href="<c:url value="/system/user/list.do?startIndex=0"/>">首页</a>&nbsp;&nbsp;
<a href="<c:url value="/system/user/list.do?startIndex=${pageMap.previousIndex }"/>">上一页</a>&nbsp;&nbsp;
<a href="<c:url value="/system/user/list.do?startIndex=${pageMap.nextIndex }"/>">下一页</a>&nbsp;&nbsp;
<a href="<c:url value="/system/user/list.do?startIndex=${pageMap.lastIndex }"/>">末页</a>
</td>
</tr>
</table>
</form>
</body>
</html>