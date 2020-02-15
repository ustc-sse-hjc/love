<%@ page language="java" import="java.util.*,com.vo.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	List<levelInfo> list = (List<levelInfo>) request.getAttribute("selectlevel");
			
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
  <p><b><font color="#808080">业务规则&gt;&gt;评估结果分布等级&gt;&gt;等级列表</font></b> </p>
  <form action="deletelevel" method="post">
  
<table border="1" width="50%"id="table1">
	<tr>
		<td bgcolor="#EBEBEB" colspan="6" style="border-style: dotted; border-width: 1px" align="center">
		　<a href="yewuguize/pinggudengji/addlevel.jsp">
		添加新等级</a>

</td>
	</tr>
	<tr>
	
		<td bgcolor="#EBEBEB" colspan="6" height="30">评分等级表</td>
	</tr>
<tr>
	<td bgcolor="#EBEBEB">选择</td>
	<td bgcolor="#EBEBEB">序号</td>
	<td bgcolor="#EBEBEB">等级名称</td>
	<td bgcolor="#EBEBEB">等级描述</td>
	<td bgcolor="#EBEBEB">状态</td>
	<td bgcolor="#EBEBEB" width="10%">操作</td>
</tr>

<%
              
				for (int i = 0; i < list.size(); i++) {
					levelInfo level = list.get(i);
			%>
	<tr>
	<td><input type="checkbox" name="l_id"id="cheboxId" value="<%=level.getL_id()%>" ></td>
		<td><%=level.getL_id() %></td>
		<td><%=level.getL_name() %></td>
		<td><%=level.getL_mix() %>~<%=level.getL_max()%></td>
		<td><%=level.getL_zhuangtai() %></td>
	    <td><a href="yewuguize/pinggudengji/update.jsp?l_id=<%=level.getL_id()%>   
	    &l_name=<%=level.getL_name() %>
	    &l_mix=<%=level.getL_mix() %>
	    &l_max=<%=level.getL_max() %>">修改 </a></td>
	</tr>
	

 
			<%
				}
			%>	
		
		
<tr>
  <td bgcolor="#EBEBEB" height="28" colspan="6">
    &nbsp;
    <input type="button" value="全选" onClick="a()" />
	<input type="button" value="反选" onClick="b()" />
    <input type="submit" name="sumbit" value="删除">
</td>
 </tr>
</table>
</form>
</body>
</html>
