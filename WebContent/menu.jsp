<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" href="<c:url value="/bin/jquery/development-bundle/themes/base/jquery.ui.all.css"/>" rel="stylesheet" />
<style type="text/css">
<!--
ul {
	list-style-type: none;
	margin-left: -10px;
}
-->
</style>
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/jquery-1.7.2.min.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/development-bundle/ui/jquery.ui.core.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/development-bundle/ui/jquery.ui.widget.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/development-bundle/ui/jquery.ui.accordion.js"/>"></script>
<script type="text/javascript">
$(function() {
	$('#accordion').accordion({
		autoHeight: false,
		navigation: true
	});
});
</script>
<title>登录首页</title>
</head>
<body>
<div id="accordion">
<h3><a href="#">系统设置</a></h3>
<div>
<ul>
<li><a href="<c:url value="/system/user/list.do" />" id="userlist" target="context">用户管理</a></li>
<li><a href="<c:url value="/system/user/list.do" />" id="userlist" target="context">角色管理</a></li>
</ul>
</div>
<h3><a href="#">基本配置</a></h3>
<div>
<li><a href="" target="context">数据字典</a></li>
</div>
</div>
</body>
</html>