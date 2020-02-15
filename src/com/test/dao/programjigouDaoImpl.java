package com.test.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.program.vo.programInfo;
import com.util.JDBC;
import com.vo.jigouInfovo;
import com.vo.userInfo;
import com.vo.voteInfo;


public class programjigouDaoImpl{
	Connection conn = JDBC.getConnection();
	PreparedStatement ps;
	ResultSet rs;

	public List<jigouInfovo>  jigou() {
		String sql="select * from jigou where o_pd=2";
		List<jigouInfovo> list = new ArrayList<jigouInfovo>();
		try {
			ps= conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				jigouInfovo jigou=new jigouInfovo();
				jigou.setO_id(rs.getInt("o_id"));
				jigou.setO_name(rs.getString("o_name"));
			 
				list.add(jigou);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	
	
	public List<userInfo> user() {
		String sql = "select * from user where k_pd=2";
		List<userInfo> list = new ArrayList<userInfo>();
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				userInfo user = new userInfo();
				
				user.setU_id(rs.getInt("u_id"));
		 
				user.setU_name(rs.getString("u_name"));
		 
				list.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}
 
	public List<programInfo> getallprogram() {	
		
		
		String sql="select *from program where pzhuangtai=1";
		List<programInfo> list=new ArrayList<programInfo>();
		try {
			ps= conn.prepareStatement(sql);
 
			rs=ps.executeQuery();
			while(rs.next()){
				programInfo program=new programInfo();
				program.setPid(rs.getInt("pid"));
				program.setPname(rs.getString("pname"));
				program.setPbegin(rs.getString("pbegin"));
				program.setPclose(rs.getString("pclose"));
				program.setPmaker(rs.getString("pmaker"));
				program.setPzhuangtai(rs.getInt("pzhuangtai"));
				program.setPtype(rs.getInt("ptype"));
				list.add(program);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	return list;

}
	
	
	
	
	public int update(int uuid,int he) {

        String sql="update user set u_score=? where u_id=?";
	    int i = 0;                                                    
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1,he);
			ps.setInt(2,uuid);			
			ps.executeUpdate();
			
	}
		catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}  
	public int updateoo(int ooid,int he) {

        String sql="update jigou set o_score=? where o_id=?";
	    int i = 0;                                                    
		try {
			ps = conn.prepareStatement(sql);
			ps.setInt(1,he);
			System.out.println("eeeeee"+he);
			ps.setInt(2,ooid);			
			ps.executeUpdate();
			
	}
		catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}  
}