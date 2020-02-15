<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'menu3.jsp' starting page</title>
 <script type="text/javascript">
if (!document.getElementById) document.getElementById = function() { return null; }

function initializeMenu(actuatorId, menuId) {
var menu = document.getElementById(menuId);
var actuator = document.getElementById(actuatorId);

if (menu == null || actuator == null) return;

//if (window.opera) return; // I'm too tired
actuator.style.backgroundImage = "url(pro_3.jpg)";

actuator.onclick = function() {
var display = menu.style.display;
this.style.backgroundImage =(display == "block") ? "url(pro_3.jpg)" : "url(pro_2.jpg)";
menu.style.display = (display == "block") ? "none" : "block";

return false;
}
}

window.onload = function() {
 
initializeMenu("one2", "oneul2");
}

function change(obj) {
 
obj.style.cursor = 'pointer';
obj.style.backgroundColor = "blue";
obj.style.color = "white";
}

function back_color(obj) {
obj.style.cursor = '';
obj.style.backgroundColor = "";
obj.style.color = "#333333";
}
</script>
<style type="text/css">
body {
margin: 0px;
font-family: arial;
}

#mainMenu {
clear: both;
width: 210px;
}

#mainMenu ul {
margin: 0px;
padding: 0px;
}

#mainMenu ul li {
margin: 0px;
padding: 0px;
list-style: none;
}

#mainMenu ul li ul, #mainMenu ul li ul li ul, #mainMenu ul li ul li ul li ul {
display: none;
margin: 0px;
padding: 0px;
}

#mainMenu ul li ul li, #mainMenu ul li ul li ul li, #mainMenu ul li ul li ul li ul li {
list-style: none;
}

#mainMenu ul li div {
padding-left: 23px;
width: 185px !important;
width: 208px;
font: bold 13px/29px Arial;
color: #333333;
background: url(pro_3.jpg) no-repeat 8px 50%;
height: 29px;
border-right: 1px solid #ebebeb;
border-bottom: 1px solid #ebebeb;
border-left: 1px solid #ebebeb;
}

#mainMenu ul li ul li div {
padding-left: 38px;
width: 170px !important;
width: 208px;
font: 12px/29px Arial;
color: #333333;
background: url(pro_2.jpg) no-repeat 23px 50%;
height: 29px;
border-right: 1px solid #ebebeb;
border-bottom: 1px solid #ebebeb;
border-left: 1px solid #ebebeb;
}

#mainMenu ul li ul li ul li div {
padding-left: 53px;
width: 155px !important;
width: 208px;
font: 10px/29px Arial;
color: #333333;
background: url(pro_2.jpg) no-repeat 38px 50%;
height: 29px;
border-right: 1px solid #ebebeb;
border-bottom: 1px solid #ebebeb;
border-left: 1px solid #ebebeb;
}

#mainMenu ul li ul li ul li ul li div {
padding-left: 68px;
width: 140px !important;
width: 208px;
font: 12px/29px Arial;
color: #333333;
background: url(pro_2.jpg) no-repeat 53px 50%;
height: 29px;
border-right: 1px solid #ebebeb;
border-bottom: 1px solid #ebebeb;
border-left: 1px solid #ebebeb;
}
</style>
</head>
<body bgcolor="#808080">
<div id="mainMenu">
<!-- 普通员工 -->
<ul>
<li><div id="one2" onMouseOver="change(this)" onMouseOut="back_color(this)"><font  size="3">+统计分析</font></div>
<ul id="oneul2">
<li><div id="two1" onMouseOver="change(this)" onMouseOut="back_color(this)"><a href='statistics/scorelist.jsp' target='I2'>
	<font size="3" color="#FFFFFF">
	<span style="text-decoration: none; font-weight:700">统计结果</span></font></a></div></li>
 
</ul>
</li>
</ul>
</div>
</body>
</html>
