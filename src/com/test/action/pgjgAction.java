package com.test.action;

import java.util.List;
import java.util.Map;

import com.test.dao.pgjgDaoImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.program.dao.kpdxDaoImpl;
import com.vo.jigouInfovo;
import com.vo.userInfo;

public class pgjgAction implements ModelDriven<userInfo>{
	private userInfo user=new userInfo();

	public userInfo getUser() {
		return user;
	}

	public void setUser(userInfo user) {
		this.user = user;
	}
    public userInfo getModel() {
		return user;
	}
	public String selectAll() {
		ActionContext ac = ActionContext.getContext();
	   	 Map session = ac.getSession();
	   	 int rid = (Integer)session.get("ptype");
	   	 if(rid==2)
	   	 	{
		pgjgDaoImpl dao = new pgjgDaoImpl();
		List<userInfo> user = (List<userInfo>) dao.selectAll();
		ac.put("value", user);
		return "success";
	}
	   	 else {
	   		pgjgDaoImpl dao =new pgjgDaoImpl();
				List<jigouInfovo> jigou = (List<jigouInfovo>) dao.selectjigou();
				ac.put("value",jigou);
				return "false";
		   	 }
}
}