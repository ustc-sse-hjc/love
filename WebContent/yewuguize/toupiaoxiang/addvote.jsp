<%@ page language="java" import="java.util.*,com.program.vo.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <%
	List<programtypeInfo> list= (List<programtypeInfo>) request.getAttribute("addgettype");
%>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加投票项</title>
 <script> 
 function clickdel(){
return confirm("提交请点击确认");
}  
</script> 
</head>

<body>

<form action="addvote" method="post">
<table border="1" width="40%" id="table3" height="350">
	<tr>
		<td bgcolor="#EBEBEB" colspan="5" style="border-style: dotted; border-width: 1px" align="center">添加投票项</td>
	</tr>
 
	<tr>
		<td bgcolor="#EBEBEB"width="24%" >投票项名称：</td>
		<td width="40%"><input type="text"  name="v_name"/></td>
	</tr>
	<tr>
		<td bgcolor="#EBEBEB"width="24%">投票项类型：</td>
		<td width="40%"><select name="v_type">
       	<option>工作计划</option>
        <option>技术水平</option>
        <option>职业道德</option>
        <option>关键业绩</option>
        <option>管理</option>
        </select></td>
	</tr>
	<tr>
		<td bgcolor="#EBEBEB"width="24%">适用类型：</td>
	 
		<td width="40%"><select name="pt_id">
		<option selected>—-请选择适用类型--</option>
<%
				for (int i = 0; i < list.size(); i++) {
					programtypeInfo user = list.get(i);
			%>
			<option><%=user.getPt_id() %></option>
			<%} %>

        </select></td>
	</tr>
	<tr>
		<td bgcolor="#EBEBEB"width="24%">适用周期：</td>
		<td width="40%"><select name="v_period">
        <option>一季度</option>
        </select></td>
     </tr>
 
	 
    <tr> 
		<td bgcolor="#EBEBEB"width="24%">状态:</td>
		<td width="40%">可用：<input type="radio" name="v_zhuangtai" value="可用" checked />不可用：<input type="radio" name="v_zhuangtai" value="不可用" /></td>
	</tr>
	 <tr>
		<td width="100%" colspan="2">
		<table width="250" border="0" id="table4">
     <tr>
    	<td colspan="2">
		    <p align="center">
		    <input type="submit" value="提交" name="B1" onclick='return clickdel()'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" value="重置" name="B2"></td>
        </tr>
      </table></td>
	</tr>
</table>
</form>
 <p><font size="2" color="#FF0000">注：1:省局对部门的考核2:部门对人员的考核</font></p>
<a href="voteAction">返回</a> 
</body>
</html>
