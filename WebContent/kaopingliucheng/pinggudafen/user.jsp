<%@ page import="com.vo.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	List<userInfo> list = (List<userInfo>) request.getAttribute("value");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>考评员工</title>
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
	    
        <td bgcolor="#EBEBEB">序号</td>
 
		<td bgcolor="#EBEBEB">考评对象</td>
	 
		<td bgcolor="#EBEBEB">操作</td>
	</tr>
<%
				for (int i = 0; i < list.size(); i++) {
					userInfo user = list.get(i);
			%>
 			    <tr>
 
         <td><%=user.getU_id()%></td>
		<td><%=user.getU_name()%></td>
	 
 
		<td><a href="userscoreAction?u_name=<%=user.getU_name()%>&u_id=<%=user.getU_id()%>">开始评分</a></td>
 
	 
 
 			   
 			     
 </tr> 
			<% }%>
 
</table>
 
</body>
</html>