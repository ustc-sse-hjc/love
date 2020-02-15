<%@ page language="java" import="java.util.*,com.program.vo.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	List<programtypeInfo> list = (List<programtypeInfo>) request
			.getAttribute("getalltype");
			
			
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>选择设置项目的类型</title>
    
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
  <p><b><font color="#808080">考评流程&gt;&gt;考评方案设置&gt;&gt;考评方案类型</font></b></p>
   <table width="500" height="200" border="1">
  <tr>
    <td height="50" colspan="3" align="center" bgcolor="#EBEBEB">请选择您要设置的方案类型</td>
  </tr>
  <tr align="center">
    <td bgcolor="#EBEBEB">序号</td>
    <td bgcolor="#EBEBEB">类型名称</td>
    <td bgcolor="#EBEBEB">选择</td>
  </tr>
	
<%
				for (int i = 0; i < list.size(); i++) {
					programtypeInfo ptype = list.get(i);
			%>
	<tr>
	 
		<td><%=ptype.getPt_id() %></td>
		<td><%=ptype.getPt_name() %></td>
		
		
	  <td><a href="kaopingliucheng/fanganshezhi/default.jsp?pt_id=<%=ptype.getPt_id()%>" >选择</a></td> 
	 
	</tr>
			<%
				}
			%>	
			
			
<tr>
</table>
</body>
 
</html>

