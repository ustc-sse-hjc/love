<%@ page language="java" import="java.util.*,com.vo.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%
	List<jobInfo> list = (List<jobInfo>) request.getAttribute("selectjob");
			
%>

 <%
	List<jigouInfovo> list1 = (List<jigouInfovo>) request.getAttribute("getjigou");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title >修改用户信息</title>
<script> 
function clickdel(){
return confirm("提交请点击确认");
}  
</script> 
</head>

  			<%
		 
			String user_pwd = request.getParameter("UserPwd");
			String user_login = request.getParameter("UserLogin");
			String user_name = request.getParameter("UserName");
			String user_sex = request.getParameter("UserSex");
			String user_birth = request.getParameter("UserBirth");
			String user_number = request.getParameter("UserNumber");
			String user_oname = request.getParameter("UserOname");
			String user_jname = request.getParameter("UserJname");
			String user_zt = request.getParameter("UserZt");
			String user_power = request.getParameter("UserPower");
			
		//	System.out.println(user_id+" "+user_pwd+" "+user_login+" "+user_name+" "+user_sex+" "+user_birth+" "+user_number+" "+user_oname+" "+user_jname+" "+user_zt+" "+user_power);
		%>
<body>
<form action="updateuser" method="post">
<% int uid = Integer.parseInt(request.getParameter("u_id")); 
session.setAttribute("uid",uid);

%>
 
<table border="1" width="35%" height="650">
	<tr>
	<td colspan="2" style="border-style: dotted; border-width: 1px" align="center" bgcolor="#EBEBEB">修改用户信息</td>
	</tr>
 
		<tr>
		<td width="24%" bgcolor="#EBEBEB">登陆密码：</td>
		<td width="40%"><input type="text" name="u_login" value=<%=user_pwd %> /></td>
	</tr>
	  <tr>
		<td width="24%" bgcolor="#EBEBEB">登陆账号：</td>
		<td width="40%"><input type="text" name="u_pwd" value=<%=user_login%> /></td>
	</tr>
	  <tr>
		<td width="24%" bgcolor="#EBEBEB">姓名：</td>
		<td width="40%"><input type="text" name="u_name" value=<%=user_name%> /></td>
	</tr>
	  <tr>
		<td width="24%" bgcolor="#EBEBEB">性别：</td>
		<td width="40%"><select name="u_sex">	
		<option><%=user_sex%>	</option>
  		<option>男</option>	
  		<option>女</option>	   						
	  </select></td>
	</tr>
	  <tr>
		<td width="24%" bgcolor="#EBEBEB">出生日期：</td>
		<td width="40%"> <select name="u_birth">
<option value="">请选择</option>
<option value="2012">2012</option>
<option value="2011">2011</option>
<option value="2010">2010</option>
<option value="2009">2009</option>
<option value="2008">2008</option>
<option value="2007">2007</option>
<option value="2006">2006</option>
<option value="2005">2005</option>
<option value="2004">2004</option>
<option value="2003">2003</option>
<option value="2002">2002</option>
<option value="2001">2001</option><option value="2000">2000</option>
<option value="1999">1999</option>
<option value="1998">1998</option>
<option value="1997">1997</option>
<option value="1996">1996</option>
<option value="1995">1995</option>
<option value="1994">1994</option><option value="1993">1993</option>
<option value="1992">1992</option>
<option value="1991">1991</option>
<option value="1990">1990</option>
<option value="1790">90后</option>
<option value="1989">1989</option>
<option value="1988">1988</option>
<option value="1987">1987</option>
<option value="1986">1986</option>
<option value="1985">1985</option>
<option value="1984">1984</option>
<option value="1983">1983</option>
<option value="1982">1982</option>
<option value="1981">1981</option>
<option value="1980">1980</option>
<option value="1780">80后</option>
<option value="1979">1979</option>
<option value="1978">1978</option>
<option value="1977">1977</option>
<option value="1976" selected="selected">1976</option>
<option value="1975">1975</option><option value="1974">1974</option>
<option value="1973">1973</option>
<option value="1972">1972</option>
<option value="1971">1971</option>
<option value="1970">1970</option>
<option value="1770">70后</option>
<option value="1969">1969</option>
<option value="1968">1968</option>
<option value="1967">1967</option>
<option value="1966">1966</option>
<option value="1965">1965</option>
<option value="1964">1964</option>
<option value="1963">1963</option>
<option value="1962">1962</option>
<option value="1961">1961</option>
<option value="1960">1960</option>
<option value="1760">60后</option>
<option value="1959">1959</option>
<option value="1958">1958</option>
<option value="1957">1957</option>
<option value="1956">1956</option>
<option value="1955">1955</option>
<option value="1954">1954</option>
<option value="1953">1953</option>
<option value="1952">1952</option>
<option value="1951">1951</option>
<option value="1950">1950</option>
<option value="1949">1949</option>
<option value="1948">1948</option>
<option value="1947">1947</option>
<option value="1946">1946</option>
<option value="1945">1945</option>
<option value="1944">1944</option>
<option value="1943">1943</option>
<option value="1942">1942</option>
<option value="1941">1941</option>
<option value="1940">1940</option>
<option value="1939">1939</option>
<option value="1938">1938</option>
<option value="1937">1937</option>
<option value="1936">1936</option>
<option value="1935">1935</option>
<option value="1934">1934</option>
<option value="1933">1933</option>
<option value="1932">1932</option>
<option value="1931">1931</option>
<option value="1930">1930</option>
<option value="1929">1929</option>
<option value="1928">1928</option>
<option value="1927">1927</option>
<option value="1926">1926</option>
<option value="1925">1925</option>
<option value="1924">1924</option>
<option value="1923">1923</option>
<option value="1922">1922</option>
<option value="1921">1921</option>
<option value="1920">1920</option>
<option value="1919">1919</option>
<option value="1918">1918</option>
<option value="1917">1917</option>
<option value="1916">1916</option>
<option value="1915">1915</option>
<option value="1914">1914</option>
<option value="1913">1913</option>
<option value="1912">1912</option>
<option value="1911">1911</option>
<option value="1910">1910</option>
<option value="1909">1909</option>
<option value="1908">1908</option>
<option value="1907">1907</option>
<option value="1906">1906</option>
<option value="1905">1905</option>
<option value="1904">1904</option>
<option value="1903">1903</option>
<option value="1902">1902</option>
<option value="1901">1901</option>
<option value="1900">1900</option></select> 年
 
<select name="u_birth"><option value="">--</option>
<option value="12">12</option>
<option value="11">11</option>
<option value="10">10</option>
<option value="9">9</option>
<option value="8">8</option>
<option value="7">7</option>
<option value="6">6</option>
<option value="5">5</option>
<option value="4">4</option>
<option value="3">3</option>
<option value="2">2</option>
<option value="1">1</option></select> 月
 
<select name="u_birth"><option value="">--</option>
<option value="31">31</option>
<option value="30">30</option>
<option value="29">29</option>
<option value="28">28</option>
<option value="27">27</option>
<option value="26">26</option>
<option value="25">25</option>
<option value="24">24</option>
<option value="23">23</option>
<option value="22">22</option>
<option value="21">21</option>
<option value="19">19</option>
<option value="18">18</option>
<option value="17">17</option>
<option value="16">16</option>
<option value="15">15</option>
<option value="14">14</option>
<option value="13">13</option>
<option value="12">12</option>
<option value="11">11</option>
<option value="10">10</option>
<option value="9">9</option>
<option value="8">8</option>
<option value="7">7</option>
<option value="6">6</option>
<option value="5">5</option>
<option value="4">4</option>
<option value="3">3</option>
<option value="2">2</option>
<option value="1">1</option></select>  
 
	</tr>
		  <tr>
		<td width="24%" bgcolor="#EBEBEB">身份证号：</td>
		<td width="40%"><input type="text" name="u_number" value=<%=user_number%> /></td>
	</tr>
	<tr>
	    <td width="24%" bgcolor="#EBEBEB">所属机构：</td>
        <td width="40%"> <select name="o_name">  
        <option><%=user_oname %></option>
 
    
     <%
				for (int i = 0; i < list1.size(); i++) {
					jigouInfovo user = list1.get(i);
			%>
			<option><%=user.getO_name() %></option>
			<%} %>
        </select></td>
	</tr>
	<tr>
	

	    <td width="24%" bgcolor="#EBEBEB">所属岗位：</td>
        <td width="40%"> <select name="j_name">  
        <option><%=user_jname %></option>
        <%
				for (int i = 0; i < list.size(); i++) {
					jobInfo user = list.get(i);
			%>
			<option><%=user.getJ_name() %></option>
			<%} %>
         
       
        
        </select></td>
	</tr>
	<tr>
	
			
		
		<td width="24%" bgcolor="#EBEBEB">状态：</td>
	    <td width="40%">可用：<input type="radio" name="u_zhuangtai" value="可用" checked />不可用：<input type="radio" name="u_zhuangtai" value="不可用" /></td>
	</tr>
	<tr>
	     <td width="24%" bgcolor="#EBEBEB">角色分配：</td>
	   <td width="40%"><select name="u_power">
	   <option><%=user_power %></option>
      <option>0</option>
      <option>1</option>
      <option>2</option>
      <option>3</option>
      </select></td>
	</tr>
	<tr>
		<td width="100%" colspan="2">
		<table width="250" border="0" id="table4">
        <tr>
    	<td colspan="2">
		    <p align="center">
		    <input type="submit" value="提交" name="B1"onclick='return clickdel()'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" value="重置" name="B2"></td>
        </tr>
      </table>
      </td>
	</tr>
	</table>
	</form>
<p><font size="2" color="#FF0000">注：0:普通用户1:管理员2:绩效专员3:领导</font></p>
<a  href="userAction">返回</a> 

</body>
</html>
