<%@ page import="com.vo.userInfo"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	List<userInfo> list = (List<userInfo>) request.getAttribute("selectAll");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>确定考评对象</title>
</head>

<body>

<table border="1" width="70%" id="table1" height="98">
	<tr>
		<td width="700" colspan="5" style="border-style: dotted; border-width: 1px" align="center">
		确定考评对象</td>
	</tr>
	<tr>
	    <td height="21">员工姓名</td>
        <td height="21">所属部门</td>
        <td height="21">评估人</td>
        <td height="21">状态</td>
	    <td height="21">选择</td>
	   <form method="post" action="deleteKpdx">
    </tr>
    <%
				for (int i = 0; i < list.size(); i++) {
					userInfo value = list.get(i);
			%>
	<tr>
	    <td><%=value.getU_name()%></td>
        <td><%=value.getO_name()%></td>
        <td>部门领导</td>
        <td><%=value.getU_zhuangtai()%></td>
	    <td><input type="checkbox" name="u_id" id="cheboxId" value="<%=value.getU_id()%>" /></td>
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