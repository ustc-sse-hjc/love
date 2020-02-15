package com.test.action;

import java.util.List;
import com.test.dao.*;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;
import com.vo.voteInfo;
 
	public class jigouscoreAction implements ModelDriven<voteInfo>{
		 
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
	 
		public String vote(){		 
		 
			jigouscoreDaoImpl dao =new jigouscoreDaoImpl();
			List<voteInfo> vote= (List<voteInfo>) dao.vote();
			ActionContext ac = ActionContext.getContext();
			ac.put("value", vote);
			//System.out.println(vote);
			return "success";
		
		}
 
		
}
