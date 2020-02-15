<%@ page language="java" import="java.util.*,com.vo.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>添加岗位信息</title>
<script> 
function clickdel(){
return confirm("提交请点击确认");
}  
</script> 
</head>

<body>
<form action="addjob" method=post>
<table border="1" width="40%" id="table3" height="250">
	<tr>
		<td bgcolor="#EBEBEB" colspan="2" height="56">
		<p align="center">添加岗位信息</td>
	</tr>
	
	<tr>
		<td bgcolor="#EBEBEB"width="13%" height="42">岗位名称：</td>
		<td width="27%" height="42"><input type="text"  name="j_name"/></td>
	</tr>
	<tr>
 
		<td bgcolor="#EBEBEB"width="13%" height="48">岗位职责：</td>
		<td width="27%" height="48"><input type="text" name="j_duty"/></td>
	</tr>
	<tr>
		<td bgcolor="#EBEBEB"width="13%" height="44">状态：</td>
		<td width="27%" height="44">可用：<input type="radio" name="j_zhuangtai" value="可用" checked />不可用：<input type="radio" name="j_zhuangtai" value="不可用" /></td>
	</tr>
	<tr>
		<td width="40%" colspan="2">
		<table border="0" width="251" id="table4">
			<tr>
				<td width="135"><input type="submit" value="提交" name="B1"onclick='return clickdel()'></td>
				<td width="100"><input value="重置" type="reset"></td>
			</tr>
		</table>
		<p>
　</td>
	</tr>
</table>

</form>
<a href="jobAction">
返回</a>
</body>

</html>
