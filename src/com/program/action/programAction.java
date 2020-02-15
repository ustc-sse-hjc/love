package com.program.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.program.dao.programDaoImpl;
import com.program.vo.programInfo;
import com.program.vo.programtypeInfo;

public class programAction implements ModelDriven<programInfo>{
	private List selectprogram;
	private programInfo program=new programInfo();
	private programtypeInfo parogrami=new  programtypeInfo();
	
	public List getSelectprogram() {
		return selectprogram;
	}
	public void setSelectprogram(List selectprogram) {
		this.selectprogram = selectprogram;
	}
	public programInfo getProgram() {
		return program;
	}
	public void setProgram(programInfo program) {
		this.program = program;
	}
	
	
	public programtypeInfo getParogrami() {
		return parogrami;
	}
	public void setParogrami(programtypeInfo parogrami) {
		this.parogrami = parogrami;
	}
	public programInfo getModel() {
		// TODO Auto-generated method stub
		return program;
	}
	
	
	
     public String selectprogram(){	//显示方案列表
    	
    	 ActionContext ac = ActionContext.getContext();
    	 Map session = ac.getSession();
    	 int rid = (Integer)session.get("ptid");
    	
         programDaoImpl dao =new programDaoImpl();
 	     List<programInfo> program = (List<programInfo>) dao.selectprogram(rid); 
 	// System.out.println("传进来了吗"+program);
 	     ac.put("selectprogram", program);
 		return "success";
     }
     
    
     
     
     public String selectopenprogram(){//显示已开启方案列表
    	// System.out.println("88888888888888");
    	 programDaoImpl dao =new programDaoImpl();
    	 List<programInfo> program = (List<programInfo>)dao.selectopenprogram();
    	 System.out.println(program);
    	 ActionContext ac = ActionContext.getContext();
    	 ac.put("selectopenprogram", program);
     return "selectopenprogram";
     }
     
     
     public String addprogram(){//添加新方案
	 programDaoImpl dao=new programDaoImpl();
    	 dao.addprogram(program);
    	// System.out.println(dao.addprogram(program)+"1000000000000000000000");
		return selectprogram();  	 
     }    
     public String deleteprogram(){
 		List ll=new ArrayList();
 		ll.add(program.getPid()+"");
 		for(int i=0;i<ll.size();i++){
 		}
 		programDaoImpl dao=new programDaoImpl();		
 		return selectprogram();
 	}

     
     
     
     public String openprogram(){//开启关闭方案
    // ActionContext ac = ActionContext.getContext();
    	
    	//System.out.println("打下了");
    	
    	 HttpServletRequest request=ServletActionContext.getRequest();
      	
    	 int ppid=Integer.parseInt(request.getParameter("ppid").trim());
     	int ppzhuangtai=Integer.parseInt(request.getParameter("ppzhuangtai").trim());
     	 
     	// System.out.println("大大的人发热反而让呀"+ppid);
      	// System.out.println("孩子状态"+ppzhuangtai);
     	
    	 
    	
    	
    	 programDaoImpl dao=new programDaoImpl();
    	  dao.openprogram(ppid,ppzhuangtai);
    	 
    	 return selectprogram();
    	
        	 
        	
     	}
     
}
