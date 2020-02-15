                                    <%@page import="com.vo.jigouInfovo"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
System.out.println("***"+path+"***"+basePath);
%>
<%
	List<jigouInfovo> list = (List<jigouInfovo>) request.getAttribute("value");
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
 
<title>机构评分</title>
</head>

<body> 
<table border="1" width="70%" id="table1">
 
<tr>
	 
	<td bgcolor="#EBEBEB">序号</td>
	<td bgcolor="#EBEBEB">机构名称</td>
 
	<td bgcolor="#EBEBEB">操作</td>
</tr>
<%
				for (int i = 0; i < list.size(); i++) {
					jigouInfovo jigou = list.get(i);
			%>
<tr>
 
	<td align="left"><%=jigou.getO_id()%></td>
	<td><%=jigou.getO_name()%></td>
 
	<td><a href="jigouscoreAction?o_name=<%=jigou.getO_name()%>
	&o_id=<%=jigou.getO_id()%> ">开始评分</a></td>
</tr>
<%
				}
			%>

 

</table>
 
</body>

</html>

