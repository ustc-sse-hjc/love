<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>烟草绩效管理系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
<body bgcolor="#808080">
<form action="LoginAction" method="post" style="border: 1px solid #FFFFFF">
 <font color="#FFFFFF"><b>账号</b></font><input type ="text" name ="u_login">
<font color="#FFFFFF"><b>密码</b></font><input type ="password" name="u_pwd" >
<input type="submit" value="提交" /><input type="reset" value="重置">
<table width="100%" border="0" cellpadding="0" cellspacing="0" background="images/10.JPG" height="148">
  <tr>
    <td width='100%' height="148"><font size="5" color="#FFFFFF"><b>绩效考评管理系统</b></font>
    	<table width="750" border="0" cellspacing="0" cellpadding="0"> </table>
    </td>
  </tr>
</table>
</form>
<p><iframe name="I1" width="20%" height="621" src="main/menu1.jsp">
浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。</iframe>
<iframe name="I2" width="80%" height="621" src="main/leaderfirst.jsp">
浏览器不支持嵌入式框架，或被配置为不显示嵌入式框架。</iframe></p>
</body> 
</html>
 