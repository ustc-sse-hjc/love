<%@ page language="java" import="java.util.*,com.program.vo.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%	List<programInfo> list = (List<programInfo>) request
			.getAttribute("selectopenprogram"); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'openprogramList.jsp' starting page</title>
    
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
<table width="671" border="1">
 <p><b><font color="#808080">考评流程&gt;&gt;开始与结束评估&gt;&gt;全部开启方案</font></b></p>
  <tr>
    <td bgcolor="#EBEBEB" colspan="5">已启动方案列表</td>
  </tr>
  <tr align="center">
    <td bgcolor="#EBEBEB">序号</td>
    <td bgcolor="#EBEBEB">方案名称</td>
    <td bgcolor="#EBEBEB">方案结束时间</td>
    <td bgcolor="#EBEBEB">状态</td>
    <td bgcolor="#EBEBEB">选择</td>
  </tr>
  <%
				for (int i = 0; i < list.size(); i++) {
					programInfo program = list.get(i);
			%>
	<tr>
	
		<td><%=program.getPid() %></td>
		<td><%=program.getPname() %></td>
		<td><%=program.getPclose()%></td>
		<td>已启动</td>
		
 <td align="center"><input type="button" value="选择" onclick="location='showCycle?pid=<%=program.getPid() %>'" /></td>
  </tr>
  <%} %>
</table>
</html>
