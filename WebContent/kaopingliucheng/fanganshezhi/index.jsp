<%@ page language="java" import="java.util.*,com.program.vo.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	List<programInfo> list = (List<programInfo>) request
			.getAttribute("selectprogram");
			
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
 <form name="ff" >
  
<table border="1" width="90%" id="table1">
	<tr>
		<td colspan="8" style="border-style: dotted; border-width: 1px" align="center">
		　<a href="kaopingliucheng/fanganshezhi/addprogram.jsp">
		添加新方案</a>

</td>
	</tr>
	<tr>
	
		<td colspan="9">方案信息列表</td>
	</tr>
<tr>
	
	<td>序号</td>
	<td>方案名称</td>
	<td>方案开始时间</td>
	<td>方案结束时间</td>
	<td>方案制定者</td>
	<td>状态</td>
	<td>操作</td>
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
		
		<%if(program.getPzhuangtai()==0){ %><td>未开启 </td><% ;}
		 else{%><td>已经开启 </td><%} ;%>
		
		
		
		
		<td> <a href = "selectCycle?ppid=<%=program.getPid() %>">设置周期
		</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		
		<%if(program.getPzhuangtai()==0){ %>
		<input type="button" value="开启"  onclick="location='openprogram?ppid=<%=program.getPid() %>&ppzhuangtai=<%=program.getPzhuangtai() %>'"/><% ;}
		else{%>
		<input type="button" value="关闭"  onclick="location='openprogram?ppid=<%=program.getPid() %>&ppzhuangtai=<%=program.getPzhuangtai() %>'"/><%} ;%>
		 
		
		</td> 
		
	
	</tr>
			<%
				}
			%>	
			

 
</table>

 </form>
  </body>
</html>
