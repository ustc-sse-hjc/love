package com.action;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.dao.levelDaoImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.vo.levelInfo;
public class levelAction implements ModelDriven<levelInfo>{
 
	private levelInfo level=new levelInfo();
	public levelInfo getLevel() {
		return level;
	}
	public void setLevel(levelInfo level) {
		this.level = level;
	}
	public levelInfo getModel() {
		// TODO Auto-generated method stub
		return level;
	}
	public String selectlevel(){		 
 
		levelDaoImpl dao =new levelDaoImpl();
		
		List<levelInfo> level= (List<levelInfo>) dao.selectlevel();
		ActionContext ac = ActionContext.getContext();
		ac.put("selectlevel", level);
	    return "selectlevel";
	
 	}
 
	public String  addlevel(){
	levelDaoImpl dao=new levelDaoImpl();
    dao.addlevel(level);
	System.out.println("xxxx");	
	return selectlevel();
	}
 
	public String delete (){
		List ll=new ArrayList();
		ll.add(level.getL_id());
	
		
		levelDaoImpl ldi =new levelDaoImpl();
		ldi.delete(ll);
		return selectlevel();
	
	} 
	public String update(){
		ActionContext ac = ActionContext.getContext();
		Map session = ac.getSession();
		int lid = (Integer)session.get("lid");  
		levelDaoImpl dao=new levelDaoImpl();
        dao.update(level, lid);
        System.out.println(lid);
		return selectlevel();
	}
	
}