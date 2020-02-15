package com.program.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.program.dao.programtypeDaoImpl;
import com.program.vo.programtypeInfo;
public class programtypeAction implements ModelDriven<programtypeInfo>{
	
	private programtypeInfo ptype=new programtypeInfo();

	public programtypeInfo getPtype() {
		return ptype;
	}

	public void setPtype(programtypeInfo ptype) {
		this.ptype = ptype;
	}
 
	public String getalltype(){
		programtypeDaoImpl dao =new programtypeDaoImpl();
		List<programtypeInfo> ptype = (List<programtypeInfo>) dao.getalltype();
		System.out.println(ptype);
		ActionContext ac = ActionContext.getContext();
		
		ac.put("getalltype", ptype);//用request获取
 
		return "getalltype";	
 
	}

	public programtypeInfo getModel() {
		// TODO Auto-generated method stub
		return ptype;
	}
	//投票项update下拉列表
	public String gettype(){
		programtypeDaoImpl dao =new programtypeDaoImpl();
		List<programtypeInfo> ptype = (List<programtypeInfo>) dao.getalltype();
		System.out.println(ptype);
		ActionContext ac = ActionContext.getContext();
		
		ac.put("gettype", ptype);//用request获取
 
		return "gettype";	
 
	}
	public String addgettype(){
		programtypeDaoImpl dao =new programtypeDaoImpl();
		List<programtypeInfo> ptype = (List<programtypeInfo>) dao.getalltype();
		System.out.println(ptype);
		ActionContext ac = ActionContext.getContext();
		
		ac.put("addgettype", ptype);//用request获取
 
		return "addgettype";	
 
	}
}
