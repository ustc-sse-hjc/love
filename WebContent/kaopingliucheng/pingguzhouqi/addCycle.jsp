<%@ page language="java" import="java.util.*,com.program.vo.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addCycle.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

 </head>
	<%
			String pid = request.getParameter("pid");
	%>
 <script src="js/dt.js"></script> 
<body>
<form action="addCycle" method="post">
<table border="1" width="338" height="360">
	<tr>
		<td height="60" width="328" colspan="2">
		<p align="center">添加方案周期</td>
	</tr>
		<tr>
		<td height="60" width="136">方案序号：</td>
		<td height="60" width="186">
	    <input type="text" name="pid" value="<%out.println(pid);%>" readonly /></td>
	</tr>
	<tr>
		<td height="60" width="136">阶段序号：</td>
		<td height="60" width="186">
	    <input type="text" name="ps_id" ></td>
	</tr>
	<tr>
		<td height="60" width="136">阶段名称：</td>
		<td height="60" width="186">
	    <input type="text" name="ps_name" ></td>
	</tr>
	<tr>
		<td height="60" width="136">开始时间：</td>
		<td height="60" width="186">
			<input type="text" name="ps_begin" id="starttime"  onclick="setday(this)"  />
		</td>
	</tr>
	<tr>
		<td height="60" width="136">结束时间：</td>
		<td height="60" width="186">
         	<input type="text" name="ps_close"  id="endtime"  onclick="setday(this)" />
        </td>
	</tr>
	<tr>
		<td height="60" width="136">评估状态：</td>

		<td height="60" width="186">
	    <input type="text" name="ps_zhuangtai"  ></td>
	</tr>
	<tr>
		<td height="60" width="328" colspan="2">
		<table width="60" border="0" id="table1">
        	<tr>
        		<td><input type="submit" value="提交" /> </td> 
        		<td width="60"><input type="reset" value="重置" /></td>
        	</tr>
		</table>
		
		</td>
	</tr>
</table>
</br><font size="2" color="#FF0000">注：阶段序号应与阶段名称相对应（例：第一阶段序号为1）	评估状态中：0表示未评估，1表示已评估</font>
</form>
</body>
</html>
