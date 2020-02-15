<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加机构</title>
<script> 
function clickdel(){
return confirm("提交请点击确认");
}  
</script> 
</head>
<body>
<form action="addjigou" method="post">
<table border="1" width="35%" id="table3" height="300">
	<tr>
		<td bgcolor="#EBEBEB"width="23%"colspan="2" style="border-style: dotted; border-width: 1px" align="center">添加机构</td>
	</tr>
  
	<tr>
		<td bgcolor="#EBEBEB"width="23%"width="24%">机构名称：</td>
		<td width="40%">
			<p><input type="text" name="o_name" size="20"></p>
		
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
		<td width="40%"><input type="text" name="o_zn" size="20" /></td>
	</tr>
	<tr>
		<td bgcolor="#EBEBEB"width="23%"width="24%">状态：</td>
		<td width="40%">可用：<input type="radio" name="o_zt" value="可用" checked />不可用：<input type="radio" name="r_zt" value="不可用"  /></td>
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
<a  href="jigouAction">返回</a> 
</body>
</html>
