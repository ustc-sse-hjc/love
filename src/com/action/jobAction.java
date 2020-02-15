package com.action;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.dao.jigouDaoImpl;
import com.dao.jobDaoImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.vo.*;
public class jobAction implements ModelDriven<jobInfo>{
	/*private List selectjob;
	private jobInfo job=new jobInfo();

	
	public List getSelectjob() {
		return selectjob;
	}
	public void setSelectjob(List selectjob) {
		this.selectjob = selectjob;
	}
	
	*/
	private jobInfo ji=new jobInfo();
	
	
	public jobInfo getJi() {
		return ji;
	}

	public void setJi(jobInfo ji) {
		this.ji = ji;
	}

	public jobInfo getModel() {
		// TODO Auto-generated method stub
		return ji;
	}
	
	
	
	
	
	private jigouInfovo jigou = new jigouInfovo();
	   public jigouInfovo getJigou() {
			return jigou;
		}
		public void setJigou(jigouInfovo jigou) {
			this.jigou = jigou;
		}
	
	
		
		
		
		
		
		
		
		//显示所有岗位列表，不是下拉框
	public String getalljob(){
		jobDaoImpl jdi =new jobDaoImpl();
		List<jobInfo> all = (List<jobInfo>) jdi.getalljob();
		ActionContext ac = ActionContext.getContext();
		Map session=ac.getSession();
		session.put("getalljob", all);
		
		
		return "getalljob";
	
	}
	
	
	
	
	
	//添加岗位
	public String  addjob(){
		jobDaoImpl jdi =new jobDaoImpl();
		jdi.addjob(ji);
		
		return getalljob();
		
		
		
		
	}
	
	
	
	
	//删除岗位
	public String delete (){
		List ll=new ArrayList();
		ll.add(ji.getJ_id());
	
		
		jobDaoImpl jdi =new jobDaoImpl();
		jdi.delete(ll);
		return getalljob();
	
	}
	
	
	
	
	
	
	
	//修改岗位
	public String update(){
		
		ActionContext ac = ActionContext.getContext();
		Map session = ac.getSession();
		int jid = (Integer)session.get("jid");  
		
 
		jobDaoImpl dao=new jobDaoImpl();
	 
		dao.update(ji, jid);
		return getalljob();
	 
	}	
	
	
	
	
	
	
	//部门与岗位下拉列表的实现。显示在员工管理，修改页面中
	public String selectjob(){
		jobDaoImpl jdi =new jobDaoImpl();
		List<jobInfo> all = (List<jobInfo>) jdi.getalljob();
		ActionContext ac = ActionContext.getContext();
		ac.put("selectjob", all);//岗位下拉列表
		
		
		
		
		jigouDaoImpl dao =new jigouDaoImpl();
		List<jigouInfovo> jigou = (List<jigouInfovo>) dao.selectjigou();
		
		ac.put("getjigou",jigou);//机构下拉列表
		
		
		
		
		return "selectjob";
	}
	
	
	
	
	
	/*部门下拉列表的实现。显示在岗位管理，修改页面中
	public String selectalljigou(){
		
		
		jigouDaoImpl dao =new jigouDaoImpl();
		List<jigouInfovo> jigou = (List<jigouInfovo>) dao.selectjigou();
		ActionContext ac = ActionContext.getContext();
		ac.put("selectalljigou",jigou);//机构下拉列表
		
		
		
		
	return "selectalljigou";
	
 
	//部门下拉列表的实现。显示在岗位管理，添加页面中
	public String addalljigou(){
		
		
		jigouDaoImpl dao =new jigouDaoImpl();
		List<jigouInfovo> jigou = (List<jigouInfovo>) dao.selectjigou();
		ActionContext ac = ActionContext.getContext();
		ac.put("addalljigou",jigou);//机构下拉列表
		
		
		
		
	return "addalljigou";
	}}*/
	
	//部门与岗位下拉列表的实现。显示在员工管理，添加页面中
	public String addselectjob(){
		jobDaoImpl jdi =new jobDaoImpl();
		List<jobInfo> all = (List<jobInfo>) jdi.getalljob();
		ActionContext ac = ActionContext.getContext();
		ac.put("addselectjob", all);//岗位下拉列表
		
		
		
		
		jigouDaoImpl dao =new jigouDaoImpl();
		List<jigouInfovo> jigou = (List<jigouInfovo>) dao.selectjigou();
		
		ac.put("addgetjigou",jigou);//机构下拉列表
		
		
		
		
		return "addselectjob";
	}
	
	
	
	
	
 
	
	}


