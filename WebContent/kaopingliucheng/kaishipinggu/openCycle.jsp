<%@ page language="java" import="java.util.*,com.program.vo.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	List<cycleInfo> list = (List<cycleInfo>) request.getAttribute("showCycle");
	int pppid=Integer.parseInt(request.getParameter("pid"));
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addcycle.jsp' starting page</title>
    
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

	

<table border="1" width="70%" id="table1">
<tr>
		<td  bgcolor="#EBEBEB">阶段名称<%=pppid %></td>
		<td  bgcolor="#EBEBEB">开始时间</td>
		<td  bgcolor="#EBEBEB">结束时间</td>
		<td  bgcolor="#EBEBEB">评估状态</td>

        <td  bgcolor="#EBEBEB">编辑</td>
	</tr>
	<%
				for (int i = 0; i < list.size(); i++) {
					cycleInfo cycle = list.get(i);
			%>
<tr>
	<td align="left"><%=cycle.getPs_name()%></td>
	<td><%=cycle.getPs_begin()%></td>
	<td><%=cycle.getPs_close()%></td>
	<%if(cycle.getPs_zhuangtai()==0) {%>
	<td>未启动</td>
	<%}  else {%>
	

<td>已启动</td>
<%} %>
	
	<%if(cycle.getPs_zhuangtai()==0) {%>
	<td><input type="button" value="开始评估" onclick="location='openCycle?pid1=<%=pppid %>&psid1=<%=cycle.getPs_id() %>'"/></td>
<%} else { %>

<td><input type="button" value="结束评估" /></td>
<%} %>
</tr>
<%
				}
			%>
	
</table>
 
</body>

</html>
