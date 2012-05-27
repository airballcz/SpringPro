<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
<!--
table {
	width: 100%;
	height: 100%;
}

iframe {
	width: 100%;
	height: 100%;
}

.tdmenu {
	width: 200px;
	height: 100%;
}

div#menu {
	width: 200px;
	height: 100%;
}
-->
</style>
</head>
<body>
<table>
<tr>
<td class="tdmenu">
<div id="menu">
<iframe name="menu" src="<c:url value="/menu.jsp"/>" scrolling="no" frameborder="0" style="z-index: 10000;"></iframe>
</div>
</td>
<td class="tdcontext">
<div id="context">
<iframe name="context" src="" scrolling="no" frameborder="0"></iframe>
</div>
</td>
</table>
</body>
</html>