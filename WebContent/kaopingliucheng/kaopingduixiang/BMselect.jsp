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
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>确定考评部门</title>
</head>

<body>

<table border="1" width="70%" id="table1" height="98">
	<tr>
		<td width="700" colspan="5" style="border-style: dotted; border-width: 1px" align="center">
		确定考评对象</td>
	</tr>
	<tr>
	    <td height="21">部门名称</td>
        <td height="21">部门类型</td>
        <td height="21">评估人</td>
        <td height="21">部门状态</td>
	    <td height="21">选择</td>
	   <form method="post" action="delete">
    </tr>
    <%
				for (int i = 0; i < list.size(); i++) {
					jigouInfovo value = list.get(i);
			%>
	<tr>
	    <td><%=value.getO_name()%></td>
        <td><%=value.getO_lx()%></td>
        <td>省局领导</td>
        <td><%=value.getO_zt()%></td>
	    <td><input type="checkbox" name="u_id" id="cheboxId" value="<%=value.getO_id()%>" /></td>
    </tr>
    	<% }%>
	<tr>
	    <td colspan="5">
		<p align="center"><input type="submit" value="删除所选考评对象" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		</from>
		<a href="select">
		增加
		</a>
		</td> 
                        
    </tr>
    </table>

</body>

</html>