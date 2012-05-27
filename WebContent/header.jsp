<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" href="<c:url value="/bin/jquery/development-bundle/themes/base/jquery.ui.all.css"/>" rel="stylesheet" />
<style type="text/css">
*{padding:0px;margin:0px;}
* li{list-style:none;}
a{text-decoration:none;color:#20537A;}
a:hover{text-decoration:underline;}

.menu_navcc{width:560px; float: right;}
.menu_nav{width:560px;height:40px;background:url(images/menu/nav_bg.gif) repeat-x;float:left;margin-top:18px;}
.menu_nav .nav_content{padding-left:8px;background:url(images/menu/nav_l_bg.gif) no-repeat;float:left;}
.menu_nav .nav_content li{width:116px;height:40px;background:url(images/menu/nav_li_right.gif) no-repeat right center;float:left;line-height:40px;text-align:center;font-size:14px;}
.menu_nav .nav_content li a{color:#fff;width:116px;height:40px;display:block;}
.menu_nav .nav_content li.current{line-height:40px;}

.menu_nav .nav_content li.home a{width:116px;height:40px;background:url(images/menu/nav_home.gif) no-repeat top;color:#fff;}
.menu_nav .nav_content li.end a{width:116px;height:40px;background:url(images/menu/nav_end.gif) no-repeat top;color:#fff;}
.menu_nav .nav_content li.current a,.menu_nav .nav_content li a:hover{width:116px;height:40px;background:url(images/menu/nav_li_current.gif) no-repeat;display:block;color:#fff;}
.menu_nav .nav_content li a:hover{background:url(images/menu/nav_li_hover.gif) no-repeat;line-height:40px;text-decoration:none;}

.menu_nav_right{padding-right:8px;background:url(images/menu/nav_r_bg.gif) no-repeat right top;float:right;height:40px;}
</style>
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/jquery-1.7.2.min.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/development-bundle/external/jquery.bgiframe-2.1.2.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/development-bundle/ui/jquery.ui.core.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/development-bundle/ui/jquery.ui.widget.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/development-bundle/ui/jquery.ui.mouse.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/development-bundle/ui/jquery.ui.draggable.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/development-bundle/ui/jquery.ui.position.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/development-bundle/ui/jquery.ui.resizable.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/development-bundle/ui/jquery.ui.dialog.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/development-bundle/ui/jquery.effects.core.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/development-bundle/ui/jquery.effects.blind.js"/>"></script>
<script type="text/javascript" charset="utf-8" src="<c:url value="/bin/jquery/development-bundle/ui/jquery.effects.explode.js"/>"></script>
<script type="text/javascript">
$.fx.speeds._default = 1000;
$(function() {
	$('#dialog').dialog({
		autoOpen: false,
		show: 'blind',
		hide: 'explode',
		zIndex: 20000
	});
	
	$('#about').click(function() {
		$('#dialog').dialog('open').dialog('moveToTop');
		return false;
	});
	
	
});
</script>
<title>登录首页</title>
</head>
<body>
<div style="font-size: 26px;">SSH权限管理系统</div>
<div style="text-align: right; font-size: 12px;">欢迎您：&nbsp;<c:out value="${user_fullname }" />&nbsp;登录！<a href="<c:url value="/j_spring_security_logout" />" target="_top">注销</a></div>
<div class="menu_navcc">
<div class="menu_nav">
<ul class="nav_content">
<li class="home"><a href="<c:url value="/home.jsp"/>" title="首页" target="home"><span>首页</span></a></li>
<li><a href="<c:url value="/content.jsp" />" title="系统管理" target="home"><span>系统管理</span></a></li>
<li><a href="#" id="about" title="关于我们"><span>关于我们</span></a></li>
</ul>
<div class="menu_nav_right"></div>

</div>
</div>
<div id="dialog" title="关于我们">
	<p>SSH权限管理系统，目标实现权限的基本管理，系统管理员可通过完全手动配置的方式完成系统的基础信息配置。系统用户可完成自身相关功能的设置。</p>
</div>
</body>
</html>