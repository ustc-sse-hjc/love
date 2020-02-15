<%@ page import="com.vo.roleInfo"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<% List<roleInfo> list=(List<roleInfo>) request.getAttribute("value"); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    <script type="text/javascript" src="../../js/jquery.js"></script>
<script type="text/javascript" src="../../js/thickbox_plus.js"></script>
<script src="../../js/dt.js"></script>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 <script> 
 
	function  a(){
		var checkObj = document.all("cheboxId");
		for(var i = 0;i<checkObj.length;i++){
			checkObj[i].checked = true;

		}
	}
	function b(){
		var checkObj = document.all("cheboxId");
		for(var i = 0;i<checkObj.length;i++){
			if(checkObj[i].checked == true) checkObj[i].checked = false;
			else checkObj[i].checked = true;

		}
	}
</script> 
  </head>
  
  <body>
    <p><b><font color="#808080">系统管理&gt;&gt;角色管理&gt;&gt;角色列表</font></b> </p>
  <form action="delete" name="form7" target='I2'>
  
  
<table border="1" width="70%" id="table1">
	<tr>
		<td bgcolor="#EBEBEB"colspan="6" style="border-style: dotted; border-width: 1px" align="center">　<a target="_self" href="xitongguanli/role/addrole.jsp">添加新角色</a></td>
	</tr>
	<tr>
		<td bgcolor="#EBEBEB"colspan="6">角色信息列表</td>
	</tr>
	<tr>
		<td bgcolor="#EBEBEB">选择</td>
		<td bgcolor="#EBEBEB">序号</td>
		<td bgcolor="#EBEBEB">角色名称</td>
		<td bgcolor="#EBEBEB">角色描述</td>
		<td bgcolor="#EBEBEB">状态</td>
		<td bgcolor="#EBEBEB">操作</td>
	</tr>
	<% 
	   
	  for (int i = 0;i<list.size();i++){
 			     roleInfo role =(roleInfo)list.get(i);
 			    %>
 			    <tr>

 			    	<td>
 			    	<input type="checkbox" name="r_id" id="cheboxId" value="<%=role.getR_id()%>" /></td>
 			    	<td><%=role.getR_id()%></td>
 			    	<td><%=role.getR_name()%></td>
 			    	<td><%=role.getR_describe()%></td>	
 			    	<td><%=role.getR_zhuangtai()%></td>
 			    	<td><a href="xitongguanli/role/editrole.jsp?r_id=<%=role.getR_id()%>
 			    	&role_name=<%=role.getR_name()%>
 			    	&role_describe=<%=role.getR_describe()%>
 			   
 			    	" >修改</a></td>
 			    	<td></td>
 </tr>
			<% }%>
		
	<tr>
  <td bgcolor="#EBEBEB"height="28" colspan="6">
    &nbsp;
   <input type="button" value="全选" onClick="a()" />
    <input type="button" value="反选" onClick="b()" />
    <input type="submit" name="submit" value="删除" />

    </td>
</tr>
</table>
</form>
  </body>
</html>
