<%@ page language="java" import="java.util.*,com.program.vo.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updateCycle.jsp' starting page</title>
    
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
			
			String ps_name = request.getParameter("ps_name");
			String ps_begin = request.getParameter("ps_begin");
			String ps_close = request.getParameter("ps_close");
			String ps_zhuangtai = request.getParameter("ps_zhuangtai");
	%>
 <script src="js/dt.js"></script> 
<body>
<form action="updateCycle" >

<%int pid = Integer.parseInt(request.getParameter("pid").trim());
	session.setAttribute("pid",pid);
	int ps_id = Integer.parseInt(request.getParameter("ps_id").trim());
	session.setAttribute("ps_id",ps_id);

%>

<table border="1" width="338" height="360">
	<tr>
		<td height="60" width="328" colspan="2">
		<p align="center">修改方案<%=pid %>周期</td>
	</tr>
	<tr>
		<td height="60" width="136">阶段名称：</td>
		<td height="60" width="186">
	    <input type="text" name="ps_name" value="<%out.println(ps_name);%>"></td>
	</tr>
	<tr>
		<td height="60" width="136">开始时间：</td>
		<td height="60" width="186">
			<input type="text" id="starttime" readonly="readonly" onclick="setday(this)" name="ps_begin" value="<%out.println(ps_begin);%>"/>
		</td>
	</tr>
	<tr>
		<td height="60" width="136">结束时间：</td>
		<td height="60" width="186">
         	<input type="text" name="ps_close" value="<%out.println(ps_close);%>" id="endtime" readonly="readonly" onclick="setday(this)" />
        </td>
	</tr>
	<tr>
		<td height="60" width="136">评估状态：</td>

		<td height="60" width="186">
	    <input type="text" name="ps_zhuangtai" value="<%out.println(ps_zhuangtai);%>" ></td>
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
		<font size="2" color="#FF0000">注：0:表示未评估 1:表示已评估</font>
</form>
</body>
</html>
