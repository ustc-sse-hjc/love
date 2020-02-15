<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.vo.jigouInfovo"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	List<jigouInfovo> list = (List<jigouInfovo>) request.getAttribute("value");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

 

<title>考评对象</title>

</head>
<body>
 
<table border="1" cellspacing="1" width="60%" id="table2" >

	<tr>


		<td bgcolor="#EBEBEB">考评对象</td>

		<td bgcolor="#EBEBEB">总分</td>

		<td bgcolor="#EBEBEB">等级名称</td>


	</tr>
<%
				for (int i = 0; i < list.size(); i++) {
					jigouInfovo jigou = list.get(i);
			%>
	<tr>



		<td width="100"><%=jigou.getO_name()%></td>

		<td width="48"><%=jigou.getO_score()%></td>
 
		<td width="130">
		<%if(jigou.getO_score()>=90){%>A级<%}; %>
		<%if(jigou.getO_score()<90){%><%if(jigou.getO_score()>=80){%>B级<%}; %><%}; %>
		<%if(jigou.getO_score()<80){%><%if(jigou.getO_score()>=70){%>C级<%}; %><%}; %>
		<%if(jigou.getO_score()<70){%><%if(jigou.getO_score()>=60){%>D级<%}; %><%}; %>
		<%if(jigou.getO_score()<60){%>E级<%}; %></td>



 
    </tr>
    			<% }%>
</table>
</body>
</html>
