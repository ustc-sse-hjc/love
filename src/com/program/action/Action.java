package com.program.action;

import com.opensymphony.xwork2.ActionSupport;

public class Action extends ActionSupport {
	
	private String pid;
	
	
	
	
	
	public String getPid() {
		return pid;
	}





	public void setPid(String pid) {
		this.pid = pid;
	}





	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println("in action /////"+pid);
		return SUCCESS;
	}
	


}
