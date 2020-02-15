<%@ page import="com.vo.jigouInfovo"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	List<jigouInfovo> list = (List<jigouInfovo>) request.getAttribute("selectjigou");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>新建网页 1</title>
</head>

<body>


<table border="1" width="100%" id="table1">
	<tr>
		<td colspan="6"><p align="center">请添加被考评部门</td>
	</tr>
	<tr>
    <td>ID</td>
	<td>选择</td>
	<td>部门名称</td>
	<td>部门类型</td>
	<td>部门职能</td>
	<td>部门状态</td>		
	<form method="POST" action="addkpdx"></tr>

	<%
				for (int i = 0; i < list.size(); i++) {
					jigouInfovo value = list.get(i);
			%>
	<tr>
		<td><%=value.getO_id()%></td>
		<td><input type="checkbox" name="u_id" id="cheboxId" value="<%=value.getO_id()%>" /></td>
		<td><%=value.getO_name()%></td>
		<td><%=value.getO_lx()%></td>
		<td><%=value.getO_zn()%></td>
		<td><%=value.getO_zt()%></td>
	</tr>
	<% }%>
	<tr>
		<td colspan="6">
		<p align="center">
		<input type="submit" value="确定" >
		<input type="reset" value="重置" >
        &nbsp; </td>
	</tr>
	</form>
</table>

</body>

</html>