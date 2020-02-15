<%@ page import="com.vo.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	List<userInfo> list = (List<userInfo>) request.getAttribute("value");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>员工信息列表</title>
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
    <p><b><font color="#808080">系统管理&gt;&gt;员工管理&gt;&gt;员工列表</font></b> </p>
  <form action="deleteuser" name="form7" target='I2'>
  <table border="1" width="70%" id="table1">
	<tr>
		<td bgcolor="#EBEBEB"colspan="10" style="border-style: dotted; border-width: 1px" align="center">　
		<a href="addselectjob">
		添加新用户
		</a></td>
	</tr>
	<tr>
		<td bgcolor="#EBEBEB"colspan="10">员工信息列表</td>
	</tr>
	<tr>
	    <td bgcolor="#EBEBEB">选择</td>
	    <td bgcolor="#EBEBEB">ID</td>
		<td bgcolor="#EBEBEB">登录账号</td>
		<td bgcolor="#EBEBEB">姓名</td>
		<td bgcolor="#EBEBEB">性别</td>
		<td bgcolor="#EBEBEB">所属机构</td>
		<td bgcolor="#EBEBEB">所属岗位</td>
		<td bgcolor="#EBEBEB">角色</td>
		<td bgcolor="#EBEBEB">状态</td>
		<td bgcolor="#EBEBEB">操作</td>
	</tr>
<%
				for (int i = 0; i < list.size(); i++) {
					userInfo user = list.get(i);
			%>
 			    <tr>

 			    	<td>
 			    	<input type="checkbox" name="u_id" id="cheboxId" value="<%=user.getU_id()%>" /></td>
 	   <td><%=user.getU_id()%></td>
		<td><%=user.getU_login()%></td>
		<td><%=user.getU_name()%></td>
		<td><%=user.getU_sex()%></td>
		<td><%=user.getO_name()%></td>
		<td><%=user.getJ_name()%></td>
	  
	 	<%if(user.getU_power()==0){ %><td>普通用户 </td><% ;}
		 else if(user.getU_power()==1)  {%><td>管理员 </td><%;}  
		 else if(user.getU_power()==2)  {%><td>绩效专员 </td><%;}  
		 else if(user.getU_power()==3)  {%><td>领导 </td><%;} 
		 %>
	 
		
		<td><%=user.getU_zhuangtai()%></td>
 
		<td><a href="selectjob?u_id=<%=user.getU_id()%>&UserPwd=<%=user.getU_pwd()%>
													&UserLogin=<%=user.getU_login()%>
													&UserName=<%=user.getU_name()%>
													&UserSex=<%=user.getU_sex()%>
													&UserBirth=<%=user.getU_birth()%>
													&UserNumber=<%=user.getU_number()%>
													&UserPower=<%=user.getU_power()%>
													&UserOname=<%=user.getO_name()%>
													&UserJname=<%=user.getJ_name()%>
													&UserZt=<%=user.getU_zhuangtai()%>" >修改</a></td>
 
	 
 
 			    	<td></td>
 			     
 </tr> 
			<% }%>
		
	<tr>
  <td bgcolor="#EBEBEB"height="28" colspan="10">
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