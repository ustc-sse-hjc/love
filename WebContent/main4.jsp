<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
 
<body bgcolor="#808080">
<table width="100%" border="0" cellpadding="0" cellspacing="0" background="images/10.JPG" height="148">
  <tr>
    <td width='20%' height="148"><font size="5" color="#FFFFFF"><b>绩效考评管理系统</b></font></td>
    <td width='80%' align="right" valign="bottom">
    	<table width="750" border="0" cellspacing="0" cellpadding="0">
      <tr>
      <td align="right" height="26" style="padding-right:10px;line-height:26px;">
        	<font color="#FFFFFF">绩效 专员：<%=session.getAttribute("value") %>，欢迎您登录绩效考评管理系统！</font>
			<font color="#FFFFFF">[</font><a href="main.jsp" ><font color="#FFFFFF">首页</font></a><font color="#FFFFFF">]
         
        	[</font><a href="index.jsp" ><font color="#FFFFFF">注销退出</font></a><font color="#FFFFFF">]</font>&nbsp;
      </td>
      </tr>
      <tr>
        <td align="right" height="34" class="rmain">
	    　</td>
      </tr>
    </table></td>
  </tr>
</table>
<!-- 绩效 -->
<p><iframe name="I1" width="20%" height="621" src="main/menu4.jsp">
浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。</iframe>
<iframe name="I2" width="80%" height="621" src="main/leaderfirst.jsp">
浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。</iframe></p>
</body>
 
</html>
