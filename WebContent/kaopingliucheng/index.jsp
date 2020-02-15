<%@ page language="java" import="java.util.*,com.program.vo.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	List<programInfo> list = (List<programInfo>) request
			.getAttribute("selectprogram");
			
%>
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
  <form action="addprogram" name="form1">
  
<table border="1" width="50%" id="table1">
	<tr>
		<td colspan="5" style="border-style: dotted; border-width: 1px" align="center">
		　<a href="kaopingliucheng/fanganshezhi/addprogram.jsp">
		添加新方案</a>

</td>
	</tr>
	<tr>
	
		<td colspan="9">方案信息列表</td>
	</tr>
<tr>
	<td>选择</td>
	<td>序号</td>
	<td>方案名称</td>
	<td>方案开始时间</td>
	<td>方案结束时间</td>
	<td>操作</td>
	<td>状态</td>
</tr>




<%
				for (int i = 0; i < list.size(); i++) {
					programInfo program = list.get(i);
			%>
	<tr>
	<td><input name="pid" type="checkbox"  value="<%=program.getPid() %>" ></td>
		<td><%=program.getPname() %></td>
		<td><%=program.getPbegin()%></td>
		<td><%=program.getPclose()%></td>
		<td><%=program.getPmaker() %></td>
		<td><%=program.getPzhuangtai()%></td>
	
	</tr>
			<%
				}
			%>	
			
			
			
<tr>
  <td height="28" colspan="6">
    &nbsp;
     <input type="button" value="全选" onClick="a()" />
	 <input type="button" value="反选" onClick="b()" />&nbsp;
    <input type="submit" name="submit" value="删除" />
  </td>
</tr>
</table>
</form>
  </body>
</html>
