package com.program.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.program.vo.cycleInfo;
import com.util.JDBC;
import com.vo.userInfo;

public class cycleDaoImpl {
	Connection conn = JDBC.getConnection();
	PreparedStatement ps;
	ResultSet rs;
	
	public List<cycleInfo> selectCycle(int pid) {
		
		
		String sql = "select * from stage where pid=? order by ps_id";
		List<cycleInfo> list = new ArrayList<cycleInfo>();
		
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1, pid);
			rs = ps.executeQuery();
			while (rs.next()) {
				cycleInfo cycle = new cycleInfo();
				cycle.setPid(rs.getInt("pid"));
				cycle.setPs_id(rs.getInt("ps_id"));
				cycle.setPs_name(rs.getString("ps_name"));
				cycle.setPs_begin(rs.getString("ps_begin"));
				cycle.setPs_close(rs.getString("ps_close"));
				cycle.setPs_zhuangtai(rs.getInt("ps_zhuangtai"));

				list.add(cycle);
				//System.out.println("邢晓梅list是"+cycle);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	public int openCycle(int pid,int ps_id) {//开始评估
		System.out.println("我大二方案号是"+pid);
		System.out.println("我大二阶段状态号是"+ps_id);
		
		String sql =  " update stage set ps_zhuangtai=1 where pid=? and ps_id=?";
		int i =0;
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, pid);
			ps.setInt(2, ps_id);
			
		    i=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}
	
	
	
	
	public int update(cycleInfo cycle,int pid,int psid) {
		String sql =  " update stage set ps_name=?,ps_begin=?,ps_close=?,ps_zhuangtai=? where pid=? and ps_id=?";
		int i =0;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1, cycle.getPs_name());
			ps.setString(2, cycle.getPs_begin());
			ps.setString(3, cycle.getPs_close());
			ps.setInt(4, cycle.getPs_zhuangtai());
			ps.setInt(5, pid);
			ps.setInt(6, psid);
		    i=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}
	public int addCycle(cycleInfo cycle) {
		
		System.out.println(cycle.getPs_name()+"   22222222222");
		
		String sql="insert into stage(pid,ps_id,ps_name,ps_begin,ps_close,ps_zhuangtai) values(?,?,?,?,?,?)";
		int i = 0;                                                    
		try {
			ps=conn.prepareStatement(sql);
	        ps.setInt(1, cycle.getPid());
			ps.setInt(2,cycle.getPs_id());
			ps.setString(3,cycle.getPs_name());
			ps.setString(4,cycle.getPs_begin());
			ps.setString(5,cycle.getPs_close());
			ps.setInt(6,cycle.getPs_zhuangtai());
			i = ps.executeUpdate();
			
	}
		catch (Exception e) {
			e.printStackTrace();

		}
	return i;
	}
	public int delete(List list) {

		int count = 0;
				
		for (int i = 0; i < list.size(); i++) {
			int ps_id = Integer.parseInt(list.get(i).toString().trim());
			System.out.println("((((((((("+ps_id);
			String sql="delete from user where ps_id=" +ps_id;
		try {
			ps = conn.prepareStatement(sql);
			count = ps.executeUpdate();
		} catch (Exception e) {
			}
		}
		return count;
	
	}
}
