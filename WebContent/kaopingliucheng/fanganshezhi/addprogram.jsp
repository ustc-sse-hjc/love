<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
  
 <script src="js/dt.js"></script> 
<body>
<form action="addprogram" >
<table border="1" width="338" height="360">
	<tr>
		<td height="60" width="328" colspan="2">
		<p align="center">添加新方案</td>
	</tr>
	<tr>
		<td height="60" width="136">方案序号：</td>
		<td height="60" width="186">
	    <input type="text" name="pid" size="20"></td>
	</tr>
	<tr>
		<td height="60" width="136">方案名称：</td>
		<td height="60" width="186">
	    <input type="text" name="pname" size="20"></td>
	</tr>
	<tr>
		<td height="60" width="136">开始时间：</td>
		<td height="60" width="186">
			<input type="text" id="starttime" readonly="readonly" onclick="setday(this)" name="pbegin" size="20" />
		</td>
	</tr>
	<tr>
		<td height="60" width="136">结束时间：</td>
		<td height="60" width="186">
         	<!--  <input type="text" name="T3" size="20"> -->
         	<input type="text" id="endtime" readonly="readonly" onclick="setday(this)"name="pclose" />
         	</td>
	</tr>
	<tr>
		<td height="60" width="136">方案制定者：</td>
		<td height="60" width="186">
	    <input type="text" name="pmaker" size="20"></td>
	</tr>
	<tr>
		<td height="60" width="136">状态：(未开启填0)</td>
		<td height="60" width="186">
	    <input type="text" name="pzhuangtai" size="20"></td>
	</tr>
	<tr>
		<td height="60" width="136">方案类型：</td>
		<td height="60" width="186">
	    <input type="text" name="ptype" size="20"></td>
	</tr>
	
	<tr>
		<td height="60" width="328" colspan="2">
		<table width="60" border="0" id="table1">
        <tr>
         <td><input type="submit" value="提交" /> 
</td> 
 
          <td width="60"><input type="reset" value="重置" /></td>
        </tr>
      </table>
		<p>　</td>
	</tr>
	</table>
</form>
</body>
</html>
