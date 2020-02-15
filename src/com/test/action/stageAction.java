package com.test.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.roleDaoImpl;
import com.opensymphony.xwork2.ActionContext;
import com.program.vo.cycleInfo;
import com.test.dao.stageDao;

public class stageAction {
	public String selectstage(){
		
		
		 HttpServletRequest request=ServletActionContext.getRequest();
	      	
    	 int pid=Integer.parseInt(request.getParameter("pid").trim());
    	 int ptype=Integer.parseInt(request.getParameter("ptype").trim());
    	 String pname=request.getParameter("pname");
		//System.out.println("我叫"+ptype);
		//System.out.println("我叫"+pid);
		//System.out.println("我叫"+pname);
		stageDao dao=new stageDao();
		ActionContext ac = ActionContext.getContext();
		Map session = ac.getSession();
		//int pid = (Integer)session.get("pid");
		List<cycleInfo> stage = (List<cycleInfo>) dao.selecstage(pid);
		
		for(int i=0;i<stage.size();i++){
			cycleInfo c=stage.get(i);
			System.out.println(c.getPs_name());
			
		}
		ac.put("stage1", stage);
		return "success";
		
	}

}
