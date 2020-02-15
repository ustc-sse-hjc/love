<%@ page language="java" import="java.util.*,com.program.vo.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	List<programInfo> list = (List<programInfo>) request
			.getAttribute("value");
			
%>
 
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
 <p><b><font color="#808080">考评流程&gt;&gt;评估打分&gt;&gt;全部开启方案</font></b> </p>
<table border="1" width="70%" id="table1">
 
	<tr>
	
		<td bgcolor="#EBEBEB"colspan="9" align="left">已启动方案列表</td>
	</tr>
<tr>
 
	<td bgcolor="#EBEBEB">序号</td>
	<td bgcolor="#EBEBEB">方案名称</td>
	<td bgcolor="#EBEBEB">方案开始时间</td>
	<td bgcolor="#EBEBEB">方案结束时间</td>
	<td bgcolor="#EBEBEB">方案制定者</td>
	<td bgcolor="#EBEBEB">状态</td>
 
    <td bgcolor="#EBEBEB">选择</td> 
</tr>


<%
				for (int i = 0; i < list.size(); i++) {
					programInfo program = list.get(i);
			%>
	<tr> 
		<td><%=program.getPid() %></td>
		<td><%=program.getPname() %></td>
		<td><%=program.getPbegin()%></td>
		<td><%=program.getPclose()%></td>
		<td><%=program.getPmaker() %></td>
		<%if(program.getPzhuangtai()==1){ %><td>已开启 </td><% ;}
	 %>
	   
 
       <td><a href="selectstage?ptype=<%=program.getPtype()%>&pname=<%=program.getPname()%>&pid=<%=program.getPid()%> " >选择</a></td> 
		
		 
		
	
	</tr>
			<%
				}
			%>	
			
 
</table>
 
  </body>
</html>