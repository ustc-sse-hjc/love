<%@ page language="java" import="java.util.*,com.program.vo.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%String pname=request.getParameter("pname"); %>
 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'gradexz.jsp' starting page</title>
    
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
  <% int ptype=Integer.parseInt(request.getParameter("ptype")); 
  session.setAttribute("ptype",ptype); 
  
  List<cycleInfo> ss=(List<cycleInfo>)request.getAttribute("stage1");
 %>
 
<p>统计分析&gt;&gt;统计结果 </p>
<hr>
<p>方案名称：<%=pname%>&nbsp; 考评方式：投票打分&nbsp; 状态：统计结果&nbsp;&nbsp;&nbsp;  
 
<!-- <input type="button" value="选择方案"  onclick="location='getallprogram'"/> -->
</p>
<hr>
 已开启的周期
 <% for(int i=0;i<ss.size();i++){
 cycleInfo v=ss.get(i);
  %>
  <a target="I5" href="pgjgAction"><%=v.getPs_name() %></a>
 <%} %>
<p>           
<p>
	 
		<iframe name="I5" src="pgjgAction" width="818" height="449" style="border-style: dotted; border-width: 1px">
		浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。</iframe></p>

</body>
</html>
