package com.action;
import com.vo.userInfo;
import java.util.Map;
import com.dao.LoginDaoImpl;
import com.opensymphony.xwork2.ActionContext;
 
 
public class LoginAction {
  
	private String u_pwd;
	private String u_login;
	 
	public String getU_pwd() {
		return u_pwd;
	}
	public void setU_pwd(String uPwd) {
		u_pwd = uPwd;
	}
	public String getU_login() {
		return u_login;
	}
    public void setU_login(String uLogin) {
		u_login = uLogin;
	}
    public String login() {
 
		LoginDaoImpl dao = new LoginDaoImpl();
		
		userInfo user = new userInfo();
        user =  dao.login(u_login, u_pwd);
	 
		ActionContext ac = ActionContext.getContext();
		Map session=ac.getSession();
		session.put("value", u_login);
        if (user.getU_login() != null&&user.getU_power()==0) {//普通用户
     
        	return "success3";
        	}
        else if(user.getU_login() != null&&user.getU_power()==1){//管理员
        	return "success2";
        	}
        else if(user.getU_login() != null&&user.getU_power()==2){//绩效
            	return "success4";
            	}
        else if(user.getU_login() != null&&user.getU_power()==3){//领导
            	return "success";
            	}
       
        else {
			return "fail";
		}
	}
}

