<%@page import="com.vo.jigouInfovo"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
System.out.println("***"+path+"***"+basePath);
%>
<%
	List<jigouInfovo> list = (List<jigouInfovo>) request.getAttribute("selectjigou");
%>
<script language="javascript">
function clickdel(){
return confirm("删除请点击确认");
}	
	function  a(){
		var checkObj = document.all("cheboxId");
		for(var i = 0;i<checkObj.length;i++){
			checkObj[i].checked = true;

		}
	}
	function b(){
		var checkObj = document.all("cheboxId");
		for(var i = 0;i<checkObj.length;i++){.
			if(checkObj[i].checked == true) checkObj[i].checked = false;
			else checkObj[i].checked = true;

		}
	}
</script> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>机构列表</title>
</head>

<body>
<p><b><font color="#808080">系统管理&gt;&gt;机构管理&gt;&gt;机构列表</font></b></p>
<form method="post" action="deletejigou">

<table border="1" width="50%" id="table1">
	<tr>
		<td bgcolor="#EBEBEB"width="23%"colspan="6" style="border-style: dotted; border-width: 1px" align="center">　
		<a target="_self" href="xitongguanli/jigou/addjigou.jsp">添加新机构</a></td>
	</tr>
	<tr>
		<td bgcolor="#EBEBEB"width="23%"colspan="6">机构信息列表</td>
	</tr>
<tr>
	<td bgcolor="#EBEBEB">选择</td>
	<td bgcolor="#EBEBEB">序号</td>
	<td bgcolor="#EBEBEB">机构名称</td>
	<td bgcolor="#EBEBEB">机构类型</td>
	<td bgcolor="#EBEBEB">状态</td>
	<td bgcolor="#EBEBEB">操作</td>
</tr>
<%
				for (int i = 0; i < list.size(); i++) {
					jigouInfovo jigou = list.get(i);
			%>
<tr>
 	<td><input type="checkbox" name="o_id" value="<%=jigou.getO_id()%>" /></td>
	<td align="left"><%=jigou.getO_id()%></td>
	<td><%=jigou.getO_name()%></td>
	<td><%=jigou.getO_lx()%></td>
	<td><%=jigou.getO_zt()%></td>
	<td><a target="_self" href="<%=basePath%>xitongguanli/jigou/update.jsp?o_id=<%=jigou.getO_id()%>
	&jigou_name=<%=jigou.getO_name() %>
    &jigou_lx=<%=jigou.getO_lx() %>
    &jigou_zn=<%=jigou.getO_zn() %>">修改</a></td>
</tr>
<%
				}
			%>

<tr>
  <td bgcolor="#EBEBEB"width="23%"height="28" colspan="6">
    &nbsp;
 
        <input type="button" value="全选" onClick="a()" />
	    <input type="button" value="反选" onClick="b()" />
        <input type="submit" name="sumbit" onclick='return clickdel()' value="删除">
        </td>
</tr>

</table>
 
</form>

</body>

</html>


