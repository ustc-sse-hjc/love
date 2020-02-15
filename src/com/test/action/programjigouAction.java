package com.test.action;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.program.vo.programInfo;
import com.test.dao.programjigouDaoImpl;
import com.vo.jigouInfovo;
import com.vo.userInfo;
	public class programjigouAction implements ModelDriven<jigouInfovo> {
		private userInfo user=new userInfo();
		 

		private jigouInfovo jigou = new jigouInfovo();
		private programInfo program=new programInfo();
	   public programInfo getProgram() {
			return program;
		}
		public void setProgram(programInfo program) {
			this.program = program;
		}
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
		public userInfo getUser() {
			return user;
		}
		public void setUser(userInfo user) {
			this.user = user;
		}
 
		public String dafen() {
			ActionContext ac = ActionContext.getContext();
		   	 Map session = ac.getSession();
		   	 int ptype = (Integer)session.get("ptype");
		 
			if(ptype==1){
				programjigouDaoImpl dao =new programjigouDaoImpl();
				List<jigouInfovo> jigou = (List<jigouInfovo>) dao.jigou();
				 
				ac.put("value",jigou);
				return "success";
			}
				else{
					programjigouDaoImpl dao = new programjigouDaoImpl();
					List<userInfo> user = (List<userInfo>) dao.user();
		 
					ac.put("value", user);
					return "false";
				}
				}
 
 
		
	     public String getallprogram(){	//显示方案列表
	     	
	     //    System.out.println("11111111111111111111111");
	    	   
	         programjigouDaoImpl dao =new programjigouDaoImpl();
	 	     List<programInfo> program = (List<programInfo>) dao.getallprogram(); 
	 	    ActionContext ac = ActionContext.getContext();
	 	// System.out.println("传进来了吗"+program);
	 	     ac.put("value", program);
	 		return "success";
	     }
	     //员工得分
	     
	     
	     
	     
	     
	     public String jigouscore(){
	    	 ActionContext ac = ActionContext.getContext();
	 		Map session = ac.getSession();
	 		int ooid = (Integer)session.get("ooid"); 
	 		
	 		HttpServletRequest request = (HttpServletRequest)ServletActionContext.getRequest();
	    	 //System.out.println("uuuuuuuu"+user.getU_id());
	 		//HttpServletRequest request = (HttpServletRequest)ServletActionContext.getRequest();
	 
		 
	 		String[] ts = request.getParameterValues("T1");
	 		int he =0 ;
	 		for(int i=0;i<ts.length;i++){
	 			String xx = ts[i];
	 			Integer kk = Integer.parseInt(xx);
	 			he += kk;
	 			
	 			
	 			
 
	 		}
	 		System.out.println("wwwwwww"+he);
	 		
	 	 
			//Map session = ac.getSession();
			//int uid = (Integer)session.get("uid"); 
		
			
			
			 programjigouDaoImpl dao =new programjigouDaoImpl();
				dao.updateoo(ooid, he);
				
				ac.put("he", he);
			//System.out.println(dao.update(user, uid));
	 		return "success";
	 	}

	     

}
