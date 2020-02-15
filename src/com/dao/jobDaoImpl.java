package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBC;
import com.vo.jobInfo;

public class jobDaoImpl {
	Connection conn = JDBC.getConnection();
	PreparedStatement ps;
	ResultSet rs;
	
	
	public List<jobInfo>getalljob(){
		String sql="select * from job";
		List<jobInfo> list = new ArrayList<jobInfo>();
		try {
			ps= conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				jobInfo job=new jobInfo();
				job.setJ_id(rs.getInt("j_id"));
				job.setJ_name(rs.getString("j_name"));
		 
				job.setJ_duty(rs.getString("j_duty"));
				job.setJ_zhuangtai(rs.getString("j_zhuangtai"));
				list.add(job);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	public jobInfo getonejob(int id){
		String sql="select * from job where j_id=?";
		jobInfo job=new jobInfo();
		try {
			ps= conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs=ps.executeQuery();
			while(rs.next()){
				
				job.setJ_id(rs.getInt("j_id"));
				job.setJ_name(rs.getString("j_name"));
				job.setO_name(rs.getString("o_name"));
				job.setJ_duty(rs.getString("j_duty"));
				job.setJ_zhuangtai(rs.getString("j_zhuangtai"));
			
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return job;
	}
	
	
	public int addjob(jobInfo job) {
		String sql="insert into job(j_name,j_duty,j_zhuangtai) values(?,?,?)";
		 int i=0;
		 
		 try {
			 ps=conn.prepareStatement(sql);
			
			 ps.setString(1, job.getJ_name());
		 
			 ps.setString(2,job.getJ_duty());
			 ps.setString(3, job.getJ_zhuangtai());
			 i=ps.executeUpdate();
			 
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		return i;
	}


	public int delete(List list) {
		int count = 0;
		for (int i = 0; i < list.size(); i++) {
			
		
		int uid = (Integer) list.get(i);
		
		String sql="delete from job where j_id=" +uid;
	try {
		ps = conn.prepareStatement(sql);
		count = ps.executeUpdate();
		count++;
	} catch (Exception e) {
		e.printStackTrace();
	}

		}
		
		return count;
	}


	public int update(jobInfo ji, int jid) {
		String sql="update job set j_name=?,j_duty=?,j_zhuangtai=? where j_id=?";
		 int i=0;
		 try {
			 ps=conn.prepareStatement(sql);
			
			 ps.setString(1, ji.getJ_name());
		 
			 ps.setString(2,ji.getJ_duty());
			 ps.setString(3, ji.getJ_zhuangtai());
			 ps.setInt(4,jid);
			i= ps.executeUpdate();
			 
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
		return i;
	}


}
