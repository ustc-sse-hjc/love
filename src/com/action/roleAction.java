package com.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.dao.roleDaoImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.vo.roleInfo;

public class roleAction implements ModelDriven<roleInfo>{
	private List selectrole;
	private roleInfo role=new roleInfo();
	public List getSelectrole() {
		return selectrole;
	}
	public void setSelectrole(List selectrole) {
		this.selectrole = selectrole;
	}
	public roleInfo getRole() {
		return role;
	}
	public void setRole(roleInfo role) {
		this.role = role;
	}
	
	public roleInfo getModel() {
	
		return role;
	}
	
	public String selectrole(){
		roleDaoImpl dao=new roleDaoImpl();
		List<roleInfo> role = (List<roleInfo>) dao.selectrole();
		
		for(int i=0;i<role.size();i++){
			roleInfo r=role.get(i);
			
		}
		
		ActionContext ac = ActionContext.getContext();
		ac.put("value", role);
		return "success";
		
	}
	public String addrole(){
		roleDaoImpl roleDao =new roleDaoImpl();
		roleDao.addrole(role);
//		roleServiceImpl service = new roleServiceImpl();
//		boolean flag = service.addrole(role);
//		if (flag) {
//			ActionContext ac = ActionContext.getContext();
//			ac.put("value", role);
//		//	System.out.println(role.getR_id());
//			return "success";
//		} else {
//			return "fail";
//		}
//    	System.out.println(role.getR_name());
		return selectrole();
	}
	
	public String delete(){
		
//		System.out.println(role.getR_id()+"第一次");
		List ll=new ArrayList();
		ll.add(role.getR_id()+"");
		for(int i=0;i<ll.size();i++){
//			System.out.println("in action//"+ll.get(i));
		}
		
//		
//		List testl=new ArrayList();
//		testl.add("111");
//		testl.add("2222");
//		testl.add("3333");
		roleDaoImpl dao=new roleDaoImpl();
		dao.delete(ll);
//		System.out.println(role.getR_id()+"第三次");
		return selectrole();
	}
	
	
	public String update(){
		ActionContext ac = ActionContext.getContext();
		Map session = ac.getSession();
		int rid = (Integer)session.get("rid");  
	//	System.out.println(rid+"22222222222");
	//	System.out.println(role.r_name+"*********");
		roleDaoImpl dao=new roleDaoImpl();
	//	int r_id =role.getR_id();
		dao.update(role, rid);
		return selectrole();
	}
	

}
