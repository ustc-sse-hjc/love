<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
	<%
		 
			String lname = request.getParameter("l_name");
		    int lmix= Integer.parseInt(request.getParameter("l_mix").trim());
			int lmax= Integer.parseInt(request.getParameter("l_max").trim());
 
	 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改等级</title>
<script> 
 function clickdel(){
return confirm("提交请点击确认");
}  
</script> 
</head>

<body>
<form action="updatelevel" method="post">
<% int lid = Integer.parseInt(request.getParameter("l_id").trim()); 
session.setAttribute("lid",lid);

%>
 
<table border="1" width="35%" id="table3" height="350">
	<tr>
		<td bgcolor="#EBEBEB"colspan="5" style="border-style: dotted; border-width: 1px" align="center">修改等级</td>
	</tr>
 
	<tr>
		<td bgcolor="#EBEBEB"width="24%" >等级名称：</td>
		<td width="40%"><input type="text" name="l_name" value=<%=lname %>> </td>
	</tr>
	<tr>
		<td bgcolor="#EBEBEB"width="24%">最小值：</td>
		<td width="40%"><input type="text" name="l_mix"" value=<%=lmix %>> </td>
	</tr>
	<tr>
		<td bgcolor="#EBEBEB"width="24%">最大值：</td>
		<td width="40%"><input type="text" name="l_max" value=<%=lmax %>> </td> 
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
<a  href="levelAction">返回</a> 
</body>
</html>
