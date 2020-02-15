<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>评分等级</title>
 <script> 
 function clickdel(){
return confirm("提交请点击确认");
}  
</script> 
</head>

<body>

<form action="addlevel" method="post">
<table border="1" width="35%" id="table3" height="320">
	<tr>
		<td bgcolor="#EBEBEB"colspan="5" style="border-style: dotted; border-width: 1px" align="center">添加新等级</td>
	</tr>
 
	<tr>
		<td bgcolor="#EBEBEB"width="24%" >等级名称：</td>
		<td width="40%"><input type="text"  name="l_name" /></td>
	</tr>
	<tr>
		<td bgcolor="#EBEBEB"width="24%">最小值：</td>
		<td width="40%"><input type="text"  name="l_mix"/></td>
	</tr>
	<tr>
		<td bgcolor="#EBEBEB"width="24%">最大值：</td>
		<td width="40%"><input type="text"  name="l_max"/></td> 
	</tr>
	<tr>
		<td bgcolor="#EBEBEB"width="24%">状态：</td>
	    <td width="40%">可用：<input type="radio" name="l_zhuangtai" value="可用" checked />不可用：<input type="radio" name="l_zhuangtai" value="不可用" /></td>
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
      </table></td>
	</tr>
</table>
</form>
<a href="levelAction">返回</a>
</body>
</html>
