<%@ page language="java" import="java.util.*,com.vo.voteInfo" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	List<voteInfo> list = (List<voteInfo>) request.getAttribute("value");
			
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
    
    <title>投票项列表</title>
    
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
   <p><b><font color="#808080">业务规则&gt;&gt;投票项设置&gt;&gt;投票项列表</font></b> </p>
  <form action="deletevote" name="form1">
  
<table border="1" width="75%" id="table1">
	<tr>
		<td bgcolor="#EBEBEB"colspan="9" style="border-style: dotted; border-width: 1px" align="center"> 
		 <a href="addgettype">
		添加投票项</a>

</td>
	</tr>
	<tr>
	
		<td bgcolor="#EBEBEB"colspan="9" >投票项列表</td>
	</tr>
<tr>
	<td bgcolor="#EBEBEB">选择</td>
 
	<td bgcolor="#EBEBEB">序号</td>
	<td bgcolor="#EBEBEB">投票项名称</td>
	<td bgcolor="#EBEBEB">投票项类型</td>
	<td bgcolor="#EBEBEB">适用类型</td>
	<td bgcolor="#EBEBEB">适用周期</td>
	<td bgcolor="#EBEBEB">状态</td>
	<td bgcolor="#EBEBEB">操作</td>
 
</tr>

<%
              
				for (int i = 0; i < list.size(); i++) {
					voteInfo vote = list.get(i);
			%>
	<tr>
	<td><input type="checkbox" name="v_id"id="cheboxId" value="<%=vote.getV_id()%>" ></td>
		<td><%=vote.getV_id() %></td>
		<td><%=vote.getV_name() %></td>
	    <td><%=vote.getV_type() %></td>
	  <%if(vote.getPt_id()==1){ %><td>省局对部门的考核 </td><% ;}
		 if(vote.getPt_id()==2){%><td>部门对员工的考核 </td><%} ;%>
	    <td><%=vote.getV_period() %></td>
	    <td><%=vote.getV_zhuangtai() %></td>
	    <td><a href="gettype?v_id=<%=vote.getV_id()%>
	    &vote_name=<%=vote.getV_name() %>
	    &vote_type=<%=vote.getV_type() %>
	    &vote_ptid=<%=vote.getPt_id() %> ">修改 </a></td>
	</tr>
			<%
				}
			%>	
			
			
			
<tr>
  <td bgcolor="#EBEBEB" height="30" colspan="8">
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