package com.test.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.program.dao.programDaoImpl;
import com.test.dao.programjigouDaoImpl;
import com.vo.userInfo;



public class addnumber implements ModelDriven<userInfo>{
	private userInfo user=new userInfo();
	
	
	public userInfo getUser() {
		return user;
	}

	public void setUser(userInfo user) {
		this.user = user;
	}
	
	public userInfo getModel() {
		// TODO Auto-generated method stub
		return user;
	}
	
	

	public String addnumber(){
		
		ActionContext ac = ActionContext.getContext();
		Map session = ac.getSession();
		int uuid = (Integer)session.get("uuid"); 
		
		HttpServletRequest request = (HttpServletRequest)ServletActionContext.getRequest();
		String[] ts = request.getParameterValues("T2");
		int he =0 ;
		for(int i=0;i<ts.length;i++){
			String xx = ts[i];
			Integer kk = Integer.parseInt(xx);
			he += kk;
		 
				
		}
		//System.out.println("呼呼呼呼"+he);
		//System.out.println("111111111111111111111总分是"+he);
		programjigouDaoImpl dao= new programjigouDaoImpl(); 
		
		dao.update(uuid, he);
		
		ac.put("he", he);
		return "success";
	}

	

}
