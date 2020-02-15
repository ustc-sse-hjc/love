<%@ page language="java" import="java.util.*,com.vo.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%List<jobInfo> list = (List<jobInfo>) session.getAttribute("getalljob"); %>
<script language="javascript">
  	
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
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <p><b><font color="#808080">系统管理&gt;&gt;岗位管理&gt;&gt;岗位列表</font></b> </p>
  <form action="deletejob" name="form1">
  
<table border="1" width="60%" id="table1">
	<tr>
		<td bgcolor="#EBEBEB" colspan="6" style="border-style: dotted; border-width: 1px" align="center">
		　<a href="xitongguanli/job/addjob.jsp">
		添加新岗位</a>

</td>
	</tr>
	<tr>
	
		<td bgcolor="#EBEBEB"colspan="6">岗位信息列表</td>
	</tr>
<tr>
	<td bgcolor="#EBEBEB" >选择</td>
	<td bgcolor="#EBEBEB" >序号</td>
	<td bgcolor="#EBEBEB" >岗位名称</td>
	<td bgcolor="#EBEBEB" >职责</td>
    <td bgcolor="#EBEBEB" >状态</td>
	<td bgcolor="#EBEBEB" >操作</td>
</tr>




<%
				for (int i = 0; i < list.size(); i++) {
					jobInfo user = list.get(i);
			%>
	<tr>
	<td><input id="cheboxId"name="j_id"type="checkbox"  value="<%=user.getJ_id() %>" ></td>
		<td><%=user.getJ_id() %></td>
		<td><%=user.getJ_name() %></td>
		<td><%=user.getJ_duty() %></td>
	     <td><%=user.getJ_zhuangtai() %></td>
		
		<td><a href="xitongguanli/job/editjob.jsp?j_id=<%=user.getJ_id()%>
		&j_name=<%=user.getJ_name() %>
		&j_duty=<%=user.getJ_duty() %>">修改</a></td>

	</tr>
			<%
				}
			%>	
			
			
			
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
