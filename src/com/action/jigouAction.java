package com.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.dao.jigouDaoImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.vo.jigouInfovo;

public class jigouAction  implements ModelDriven<jigouInfovo> {
	private jigouInfovo jigou = new jigouInfovo();
   public jigouInfovo getJigou() {
		return jigou;
	}
	public void setJigou(jigouInfovo jigou) {
		this.jigou = jigou;
	}
	public jigouInfovo getModel() {
		// TODO Auto-generated method stub
		return jigou;
	}

	public String selectjigou() {
		jigouDaoImpl dao =new jigouDaoImpl();
		List<jigouInfovo> jigou = (List<jigouInfovo>) dao.selectjigou();
		ActionContext ac = ActionContext.getContext();
		ac.put("selectjigou",jigou);
		return "selectjigou";
	}
	public String  addjigou(){
		jigouDaoImpl dao =new jigouDaoImpl();
		dao.addjigou(jigou);
		return selectjigou();
		}
	public String delete(){
		List ll=new ArrayList();
		ll.add(jigou.getO_id());
		jigouDaoImpl dao=new jigouDaoImpl();
		dao.delete(ll);
		return selectjigou();
	}
	public String update(){
		ActionContext ac = ActionContext.getContext();
		Map session = ac.getSession();
		int oid = (Integer)session.get("oid");  
		jigouDaoImpl dao=new jigouDaoImpl();
		dao.update(jigou, oid);
		return selectjigou();
	}

	
}
