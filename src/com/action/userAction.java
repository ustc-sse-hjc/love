package com.action;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.dao.userDaoImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.vo.userInfo;

public class userAction implements ModelDriven<userInfo>{
	/*private List selectjob;
	private jobInfo job=new jobInfo();
   */
	private userInfo user=new userInfo();
 
	public userInfo getUser() {
		return user;
	}
	public void setUser(userInfo user) {
		this.user = user;
	}
    public userInfo getModel() {
		// TODO Auto-generated method stub
		return user;
	}
	public String selectAll() {
		userDaoImpl dao = new userDaoImpl();
		List<userInfo> user = (List<userInfo>) dao.selectAll();
		ActionContext ac = ActionContext.getContext();
		ac.put("value", user);
		return "success";
	}
   public String adduser(){
	userDaoImpl UDao =new userDaoImpl();
	UDao.adduser(user);
	return selectAll();
}
   public String delete(){

		List ll=new ArrayList();
		ll.add(user.getU_id()+"");
		
		for(int i=0;i<ll.size();i++){
		}
		userDaoImpl dao=new userDaoImpl();
		dao.delete(ll);
		return selectAll();
	}
	public String update(){
		ActionContext ac = ActionContext.getContext();
		Map session = ac.getSession();
		int uid = (Integer)session.get("uid");  
	//	System.out.println(rid+"22222222222");
	//	System.out.println(role.r_name+"*********");
		userDaoImpl dao=new userDaoImpl();
	//	int r_id =role.getR_id();
		dao.update(user, uid);
		return selectAll();
	}
	public String updateone(){
		ActionContext ac = ActionContext.getContext();
		Map session = ac.getSession();
		int uid = (Integer)session.get("uid");  
	//	System.out.println(rid+"22222222222");
	//	System.out.println(role.r_name+"*********");
		userDaoImpl dao=new userDaoImpl();
	//	int r_id =role.getR_id();
		dao.update(user, uid);
		return selectAll();
	}
	
}
