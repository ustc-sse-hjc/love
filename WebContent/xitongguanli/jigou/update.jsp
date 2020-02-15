<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
		<%
		 
			String jigouName = request.getParameter("jigou_name");
			String jigouLx= request.getParameter("jigou_lx");
			String jigouZn = request.getParameter("jigou_zn");
 
	 %>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>修改机构信息</title>
<script> 
function clickdel(){
return confirm("提交请点击确认");
}  
</script> 
</head>

<body>
<form method="post"action="updatejigou">
<% int oid = Integer.parseInt(request.getParameter("o_id")); 
session.setAttribute("oid",oid);
%>

<table border="1" width="35%" id="table1" height="300">
	<tr>
	<td bgcolor="#EBEBEB"width="23%"colspan="2" style="border-style: dotted; border-width: 1px" align="center">修改机构信息</td>
	</tr>
	<tr>
		<td bgcolor="#EBEBEB"width="23%"width="24%">机构名称：</td>
		<td width="40%"><input type="text" name="o_name" value="<%out.println(jigouName);%>"  /> 
		
		</td>
	</tr>
	<tr>
		<td bgcolor="#EBEBEB"width="23%"width="24%">机构类型：</td>
		<td width="40%"><select name="o_lx" size="1">
        <option value="部门">部门</option>
      </select></td>
	</tr>
	<tr>
		<td bgcolor="#EBEBEB"width="23%"width="24%">部门职能：</td>
		<td width="40%"><input type="text" name="o_zn" value="<%out.println(jigouZn);%>" /></td>
	</tr>
	<tr>
		<td bgcolor="#EBEBEB"width="23%"width="24%">状态：</td>
		<td width="40%">可用：<input type="radio" name="o_zt" .
		value="可用" checked />不可用：<input type="radio" name="o_zt" value="不可用"  /></td>
	</tr>
		<tr>
		<td width="100%" colspan="2">
		<table width="250" border="0" id="table4">
        <tr>
    	<td colspan="2">
		    <p align="center">
		    <input type="submit" value="提交" name="B1"onclick='return clickdel()'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" value="重置" name="B2"></td>
        </tr>
      </table>
      </td>
	</tr>
</table>
</form>
<a href="../../jigouAction">返回</a> 

</body>

</html>