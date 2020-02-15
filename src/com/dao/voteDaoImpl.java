package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBC;
import com.vo.voteInfo;
public class voteDaoImpl {
	Connection conn = JDBC.getConnection();
	PreparedStatement ps;
	ResultSet rs;
	
	public List<voteInfo> selectvote(){
		String sql="select * from vote";
		List<voteInfo> list = new ArrayList<voteInfo>();
		try {
			ps= conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				voteInfo vote =new voteInfo();
				vote.setV_id(rs.getInt("v_id"));
				vote.setV_name(rs.getString("v_name"));
				vote.setV_type(rs.getString("v_type"));
				vote.setPt_id(rs.getInt("pt_id"));
				vote.setV_period(rs.getString("v_period"));
				vote.setV_zhuangtai(rs.getString("v_zhuangtai"));
				
				list.add(vote);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}
	public int addvote(voteInfo vote) {
		String sql="insert into vote(v_name,v_type,pt_id,v_period,v_zhuangtai) values(?,?,?,?,?)";
		System.out.println("rrrr");
		int i = 0;    
		try {
		    ps = conn.prepareStatement(sql);
		    ps.setString(1,vote.getV_name());
			ps.setString(2,vote.getV_type());
			ps.setInt(3,vote.getPt_id());
			ps.setString(4,vote.getV_period());
		 
			ps.setString(5,vote.getV_zhuangtai());
			i = ps.executeUpdate();
			
	}
		catch (Exception e) {
			e.printStackTrace();
		}return i;
	}
	public int delete(List list) {
		int count = 0;
		for (int i = 0; i < list.size(); i++) {
	    int uid = (Integer) list.get(i);
		String sql="delete from vote where v_id=" +uid;
		 
		
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
	public int update(voteInfo  vote,int vid) {
        String sql="update vote  set v_name=?,v_type=?,pt_id=?,v_period=?,v_zhuangtai=?  where v_id=?";
	    int i = 0;                                                    
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1,vote.getV_name());
			ps.setString(2,vote.getV_type());
			ps.setInt(3,vote.getPt_id());
			ps.setString(4,vote.getV_period());
		 
			ps.setString(5,vote.getV_zhuangtai());
			ps.setInt(6,vid);
			
			ps.executeUpdate();
			
	}
		catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}  
 
}