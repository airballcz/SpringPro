<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" href="<c:url value="/bin/jquery/development-bundle/themes/base/jquery.ui.all.css"/>" rel="stylesheet" />
<link type="text/css" href="<c:url value="/css/common.css"/>" rel="stylesheet" />
<style type="text/css">
table thead tr th {
	height: 30px;
	text-align: center;
}
</style>

<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/jquery-1.7.2.min.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/development-bundle/external/jquery.bgiframe-2.1.2.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/development-bundle/ui/jquery.ui.core.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/development-bundle/ui/jquery.ui.widget.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/development-bundle/ui/jquery.ui.mouse.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/development-bundle/ui/jquery.ui.button.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/development-bundle/ui/jquery.ui.draggable.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/development-bundle/ui/jquery.ui.position.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/development-bundle/ui/jquery.ui.resizable.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/development-bundle/ui/jquery.ui.dialog.js"/>"></script>
<script type="text/javascript">
$(function() {
	// 查询按钮
	$('#btn_query').button({
		icons: {
			primary: 'ui-icon-locked'
		}
	}).css({'font-size' : '0.5em'});
	
	// 添加按钮
	$('#btn_add').button({
		icons: {
			primary: 'ui-icon-document'
		}
	})
	.css({'font-size' : '0.5em'})
	.bind('click', function() {
		// 绑定点击事件，弹出添加页面
		var url= '<c:url value="/system/user/view.jsp"/>';
		$('<iframe id="dialog_add"/>').attr('src', url).dialog({
			autoOpen: true,
			//modal: true,
			height: '350',
			title: '新增用户'
		});
		return false;
	});
});
</script>
</head>
<body>
<form action="<c:url value="/system/user/list.do"/>">
<table>
<tr class="tr_query">
<td colspan="2">帐号：<input type="text" name="account" value="${pageMap.user.account }" />&nbsp;&nbsp;
<button id="btn_query">查询</button>&nbsp;&nbsp;
<button id="btn_add">新增</button></td>
</tr>
</table>
<table>
<thead>
<tr class="ui-widget-header">
<th>序号</th><th>帐号</th><th>密码</th><th>全名</th><th>手机</th><th>座机</th><th>电子邮件</th><th>操作</th>
</tr>
</thead>
<c:forEach items="${pageMap.users }" var="user" varStatus="status">
<tr>
<td>${status.count }</td><td>${user.account }</td><td>${user.password }</td><td>${user.fullName }</td><td>${user.cellphone }</td><td>${user.tellphone }</td><td></td>
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