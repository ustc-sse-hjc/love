package com.action;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.dao.voteDaoImpl;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.vo.voteInfo;
public class voteAction implements ModelDriven<voteInfo>{
 
	private voteInfo vote=new voteInfo();
 
	public voteInfo getVote() {
		return vote;
	}
	public void setVote(voteInfo vote) {
		this.vote = vote;
	}
 
	public voteInfo getModel() {
		// TODO Auto-generated method stub
		return vote;
	}
 
	public String selectvote(){		 
	 
		voteDaoImpl dao =new voteDaoImpl();
		List<voteInfo> vote= (List<voteInfo>) dao.selectvote();
		ActionContext ac = ActionContext.getContext();
		ac.put("value", vote);
		//System.out.println(vote);
		return "success";
	
	}
	public String  addvote(){
		voteDaoImpl dao=new voteDaoImpl();
	    dao.addvote(vote);
 
		return selectvote();
		}
	public String delete (){
		System.out.println(vote.getV_id());
	 
		List list=new ArrayList();
		list.add(vote.getV_id());
        voteDaoImpl vote =new voteDaoImpl();
		vote.delete(list);
		return selectvote(); 
}
	public String update(){
		ActionContext ac = ActionContext.getContext();
		Map session = ac.getSession();
		int vid = (Integer)session.get("vid"); 
	
		System.out.println(vote);
		
		voteDaoImpl dao=new voteDaoImpl();
		System.out.println(dao.update(vote, vid));
		return selectvote();
	}
}