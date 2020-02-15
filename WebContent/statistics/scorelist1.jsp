<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.vo.*"%>
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

<meta http-equiv="Content-Type" content="text/html; charset=gb2312">

<title>考评对象</title>

</head>
<body> 
<table border="1" cellspacing="1" width="80%" id="table2">

	<tr>


		<td bgcolor="#EBEBEB">考评对象</td>
		<td bgcolor="#EBEBEB">所属机构</td>
        <td bgcolor="#EBEBEB">所属岗位</td>
		<td bgcolor="#EBEBEB">总分</td>
        <td bgcolor="#EBEBEB">等级名称</td>



	</tr>
<%
				for (int i = 0; i < list.size(); i++) {
					userInfo user = list.get(i);
			%>
	<tr>


		<td width="100"><%=user.getU_name()%></td>
        <td width="100"><%=user.getO_name()%></td>
        <td width="100"><%=user.getJ_name()%></td>
       
        
		<td width="48"><%=user.getU_score()%></td>

		<td width="130">
		<%if(user.getU_score()>=90){%>A级<%}; %>
		<%if(user.getU_score()<90){%><%if(user.getU_score()>=80){%>B级<%}; %><%}; %>
		<%if(user.getU_score()<80){%><%if(user.getU_score()>=70){%>C级<%}; %><%}; %>
		<%if(user.getU_score()<70){%><%if(user.getU_score()>=60){%>D级<%}; %><%}; %>
		<%if(user.getU_score()<60){%>E级<%}; %></td>



 
    </tr>
    			<% }%>
</table>
</body>
</html>
