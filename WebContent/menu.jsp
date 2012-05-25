<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/jquery-1.7.1.min.js"/>"></script>
<script type="text/javascript">
$(function() {
	var url = '<c:url value="/system/user/list.do" />';
	//tabs.tabs('add', url, '用户管理1', [2]);
	
	//$('#userlist').click(function() {
		//alert(window.parent.top.frames['summary'].window);
	//});
});

function test() {
	alert(window.parent.frames['summary'].window.addTab());
}
</script>
<title>登录首页</title>
</head>
<body>
系统菜单列表
<a href="#" onclick="test()" id="userlist" target="summary">用户列表</a>
</body>
</html>