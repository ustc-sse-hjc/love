<%@ page language="java" import="java.util.*,com.program.vo.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	List<cycleInfo> list = (List<cycleInfo>) request.getAttribute("value2");
	int aa =(Integer)(request.getAttribute("p_id2"));
	
	
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'cycle.jsp' starting page</title>
    
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
	<p>设置<%=aa%>号方案周期：<select size="1" name="D1">
								<option>季度考评</option>
							</select><a href="kaopingliucheng/pingguzhouqi/addCycle.jsp?pid=<%=aa%>" >     添加新周期</a></p>

  <form action="deleteCycle" name="form288">									
<table border="1" width="70%" id="table1">
	<tr>
		<td width="150">阶段名称</td>
		<td width="150">开始时间</td>
		<td width="150">结束时间</td>
		<td width="150">评估状态</td>
		<td width="100">编辑</td>
	</tr>
	<%
				for (int i = 0; i < list.size(); i++) {
					cycleInfo cycle = list.get(i);
			%>
<tr>
	<td align="left"><%=cycle.getPs_name()%></td>
	<td><%=cycle.getPs_begin()%></td>
	<td><%=cycle.getPs_close()%></td>
	<td><%=cycle.getPs_zhuangtai()%></td>
	<td><a href="kaopingliucheng/pingguzhouqi/updateCycle.jsp?pid=<%=cycle.getPid()%>
															 &ps_id=<%=cycle.getPs_id()%>
															 &ps_name=<%=cycle.getPs_name()%>
															 &ps_begin=<%=cycle.getPs_begin()%>
															 &ps_close=<%=cycle.getPs_close()%>
															 &ps_zhuangtai=<%=cycle.getPs_zhuangtai()%>
															 " >修改</a></td>
</tr>
<%
				}
			%>
			

</table>
 <p><a href = "selectprogram">返回</a></p>
<font size="2" color="#FF0000">注：0:表示未评估 1:表示已评估</font>
</form>
</body>

</html>
