package com.program.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.program.dao.kpdxDaoImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

import com.vo.jigouInfovo;
import com.vo.userInfo;

public class kpdxAction implements ModelDriven<userInfo>{
    private userInfo value=new userInfo();
    private jigouInfovo bm=new jigouInfovo();
	public jigouInfovo getBm() {
		return bm;
	}
	public void setBm(jigouInfovo bm) {
		this.bm = bm;
	}
	public userInfo getValue() {
		return value;
	}

	public void setValue(userInfo value) {
		this.value = value;
	}

	public String selectAll() {
		ActionContext ac = ActionContext.getContext();
	   	 Map session = ac.getSession();
	   	 int rid = (Integer)session.get("ptid");
	   	 if(rid==2)
	   	 	{
	   		kpdxDaoImpl dao =new kpdxDaoImpl();
	   		List<userInfo> value = (List<userInfo>) dao.selectAll();
	   		ac.put("selectAll",value);
	   		return "success";}
	   	 else {
	   		kpdxDaoImpl dao =new kpdxDaoImpl();
			List<jigouInfovo> jigou = (List<jigouInfovo>) dao.selectjigou();
			ac.put("selectjigou",jigou);
			return "false";
	   	 }
	}
	public userInfo getModel() {
		return value;
	}
	public String select() {
		ActionContext ac = ActionContext.getContext();
	   	 Map session = ac.getSession();
	   	 int rid = (Integer)session.get("ptid");
	   	 if(rid==2)
	   	 	{
	   		 kpdxDaoImpl dao =new kpdxDaoImpl();
	   		 List<userInfo> value = (List<userInfo>) dao.select();
	   		 ac.put("select",value);
	   		 return "success";}
	   	 else{
		   	kpdxDaoImpl dao =new kpdxDaoImpl();
			List<jigouInfovo> jigou = (List<jigouInfovo>) dao.selectjigou2();
			ac.put("selectjigou",jigou);
			return "false";
	   	 }

	}
	
	public String delete(){
		ActionContext ac = ActionContext.getContext();
	    	Map session = ac.getSession();
	    	int rid = (Integer)session.get("ptid");
		List ll=new ArrayList();
		ll.add(value.getU_id());
	   	 if(rid==2)
	   	 	{
	   		 kpdxDaoImpl dao=new kpdxDaoImpl();
	   		 dao.delete(ll);
	   		 return selectAll();}
	   	 else{
	   		 kpdxDaoImpl dao=new kpdxDaoImpl();
	   		 dao.deletejigou(ll);
	   		 return selectAll();
	   		 }
	}
	
	public String add(){
		ActionContext ac = ActionContext.getContext();
    	Map session = ac.getSession();
    	int rid = (Integer)session.get("ptid");
		List ll=new ArrayList();
		ll.add(value.getU_id());
	   	 if(rid==2)
	   	 	{
	   		 kpdxDaoImpl dao=new kpdxDaoImpl();
	   		 dao.add(ll);
	   		 return selectAll();}
	   	 else{
	   		 kpdxDaoImpl dao=new kpdxDaoImpl();
	   		 dao.addjigou(ll);
	   		 return selectAll();
	   		 }
	   	 }
	
	
	
}

