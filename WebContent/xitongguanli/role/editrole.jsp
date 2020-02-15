<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<% 
String rname=request.getParameter("role_name");
String rdescribe=request.getParameter("role_describe");
 

%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>编辑角色</title>
<script> 
function clickdel(){
return confirm("提交请点击确认");
}  
</script>  
</head>

<body>
<form action="update" name="form4"  target='I2'>
<% int rid = Integer.parseInt(request.getParameter("r_id").trim()); 
session.setAttribute("rid",rid);
%>
<table border="1" width="35%" id="table1" height="257">
	<tr>
		<td bgcolor="#EBEBEB"colspan="2" height="48">
		<p align="center">编辑角色信息</td>
	</tr>
	<tr>
		<td bgcolor="#EBEBEB"width="23%" height="56">角色名称：</td>
		<td width="72%" height="56"><input type="text"  name="r_name" value=<%=rname %>></td>
	</tr>
	<tr>
		<td bgcolor="#EBEBEB"width="23%" height="56">角色描述：</td>
		<td width="72%" height="56"><input type="text"  name="r_describe" value=<%=rdescribe %>></td>
	</tr>
	<tr>
		<td bgcolor="#EBEBEB"width="23%" height="55">状态：</td>
		<td width="72%" height="55">可用：<input type="radio" name="r_zhuangtai" value="可用" checked />不可用：<input type="radio" name="r_zhuangtai" value="不可用" /></td>
	</tr>
	<tr>
		<td width="92%" colspan="2">
		<table width="251" border="0" id="table2" height="60">
        <tr>
        
          <td width="135"><input type="submit" value="提交" name="B1"onclick='return clickdel()'></td>
          <td width="100"><input type="reset" value="重置" /></td>
        </tr>
      </table></td>
	</tr>
</table>

</form>
<a href="roleAction">返回</a>
  </body>
</html>
