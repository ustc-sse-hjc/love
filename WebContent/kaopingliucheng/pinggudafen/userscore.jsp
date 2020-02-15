<%@ page import="com.vo.*"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	List<voteInfo> list = (List<voteInfo>) request.getAttribute("value");
%>
  			<%
		 
			String aa= request.getParameter("u_name");
			int uid=Integer.parseInt(request.getParameter("u_id"));
			session.setAttribute("uuid",uid);
 
		%>
 

		
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>员工评分</title>
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <script language="javascript">
function checkinput_zzjs(event){
  if (event.srcElement.name=="T2") {
    if (event.srcElement.value>10) {
      event.srcElement.value="10";
      alert("必须是小于10的数字！");
      event.srcElement.select();
    }
  }
} 
</script>
 </head>
  <body>
 <form name="f1" action="addnumber" method="post">
 
  <table border="1" width="100%" id="table1">
 	<tr>
	 
         <td bgcolor="#EBEBEB"colspan="3" height="50"><font size="4">考评对象：<%=aa%>&nbsp;&nbsp;&nbsp;&nbsp;
			总分：100 &nbsp;&nbsp;&nbsp;&nbsp;
			得分：  </font></td> 
			</tr>
		 
		
        <tr>
	    <td bgcolor="#EBEBEB">评分指标</td>
		<td bgcolor="#EBEBEB">考评类型</td>
		
		<td bgcolor="#EBEBEB">评分</td>
	</tr>
	
<% 
				for (int i = 0; i < list.size(); i++) {
					voteInfo vote = list.get(i);
			%>
 			    <tr>
        <td><%=vote.getV_name()%></td>
		<td><%=vote.getV_type()%></td>
	   
	  <td> <input type="text" name="T2" size="5" onkeyup="checkinput_zzjs(event)"><font size="2" color="#FF0000"*>填写0~10内的数字</font></td>
	 
</tr>
			<% }%>
 	<tr>
	 
         <td bgcolor="#EBEBEB"colspan="3">
         <input type="hidden" name="u_id" value=<%=uid%>/>
         <input type ="submit" name=""value="提交""> 
        
         <a href = "programjigouAction">返回</a></td>  
			</tr>
		 
 
</table>
 </form>
</body>
 
</html>