package com.program.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.userDaoImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.program.dao.cycleDaoImpl;
import com.program.vo.cycleInfo;
import com.vo.userInfo;

public class cycleAction implements ModelDriven<cycleInfo>{
		
	private List select;

	public List getSelect() {
		return select;
	}

	public void setSelect(List select) {
		this.select = select;
	}
	
	
	private int pid;
	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	
	private cycleInfo cycle = new cycleInfo();
   public cycleInfo getCycle() {
		return cycle;
	}

	public void setCycle(cycleInfo cycle) {
		this.cycle = cycle;
	}

	public cycleInfo getModel() {
		return cycle;
	}


	
	
	
	
	
	
	
	
	public String showCycle() {//阶段列表开始评估
		
		 HttpServletRequest request=ServletActionContext.getRequest();
	      	
    	 int ppid=Integer.parseInt(request.getParameter("pid").trim());
    	// System.out.println("ooo"+ppid);
		cycleDaoImpl dao = new cycleDaoImpl();

		ActionContext ac = ActionContext.getContext();

		List<cycleInfo> cycle = (List<cycleInfo>) dao.selectCycle(ppid);
		System.out.println("woaimama"+cycle);
		
		
		
		ac.put("showCycle", cycle);
		ac.put("pid", ppid);
		
		
		return "showCycle";
	}
	
	
	public String openCycle(){//开始评估
		 System.out.println("爱吃麦当劳：");
		 
		 
		 HttpServletRequest request=ServletActionContext.getRequest();
	      	int pid=Integer.parseInt(request.getParameter("pid1"));
    	int psid=Integer.parseInt(request.getParameter("psid1"));
    	
		cycleDaoImpl dao = new cycleDaoImpl();
		System.out.println("九月九"+pid+"九月九"+psid);
		System.out.println("麦当劳"+dao.openCycle(pid, psid));

		
		ActionContext ac = ActionContext.getContext();
         List<cycleInfo> cycle = (List<cycleInfo>) dao.selectCycle(pid);
		System.out.println("woaimama"+cycle);
		
		
		
		ac.put("showCycle2", cycle);
		ac.put("pid2", pid);
		
		
		
		return "showCycle";
			
	}
	
	public String selectCycle() {
		
		 HttpServletRequest request=ServletActionContext.getRequest();
	      	
   	 int ppid=Integer.parseInt(request.getParameter("ppid").trim());
		
		cycleDaoImpl dao = new cycleDaoImpl();

		ActionContext ac = ActionContext.getContext();

		List<cycleInfo> cycle = (List<cycleInfo>) dao.selectCycle(ppid);

		ac.put("value", cycle);
		ac.put("p_id", ppid);
		
		return "success";
	}

	
	
	public String update(){
		//System.out.println("呀呀呀");
		ActionContext ac = ActionContext.getContext();
		Map session = ac.getSession();
		int psid = (Integer)session.get("ps_id");
		int pid = (Integer)session.get("pid"); 
		System.out.println("源源方案号"+pid);
		System.out.println("源源方案阶段号"+psid);
		cycleDaoImpl dao=new cycleDaoImpl();
		dao.update(cycle,pid, psid);


		List<cycleInfo> cycle = (List<cycleInfo>) dao.selectCycle(pid);

		ac.put("value2", cycle);
		ac.put("p_id2", pid);
		
		return "success";
	}
	
	
	
	   public String addCycle(){//添加新阶段
			//System.out.println(cycle.getPid());
			//System.out.println(cycle.getPs_begin());
			//System.out.println(cycle.getPs_name()+"   444444444444444");
		   
		   int pid=cycle.getPid();
			cycleDaoImpl dao =new cycleDaoImpl();
			dao.addCycle(cycle);
			
			
			
			
		      	
	
				
			
				ActionContext ac = ActionContext.getContext();

				List<cycleInfo> cycle = (List<cycleInfo>) dao.selectCycle(pid);

				ac.put("value", cycle);
				ac.put("p_id", pid);
				
				return "success";
			
			
			
			
			
		}
	   
	   
	   
	   public String deleteCycle(){

			List ll=new ArrayList();
			ll.add(cycle.getPid()+"");
			ll.add(cycle.getPs_id()+"");
			for(int i=0;i<ll.size();i++){
			}
			cycleDaoImpl dao=new cycleDaoImpl();
			dao.delete(ll);
			return selectCycle();
		}
}
