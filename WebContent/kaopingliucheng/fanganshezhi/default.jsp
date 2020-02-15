<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>方案设置</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>

 <% int pt_id=Integer.parseInt(request.getParameter("pt_id").trim()); 
  session.setAttribute("ptid",pt_id); 
 %>

<a target="I4"  href="selectprogram">考评方案设置 </a>
 
<a target="I4" href="selectKpdx">确定考评对象</a>
 
<p>
<iframe name="I4" src="selectprogram" width="916" height="519" style="border-style: dotted; border-width: 1px">
浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。</iframe></p>

</body>
 
</html>
