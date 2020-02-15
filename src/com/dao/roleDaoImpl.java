package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBC;
import com.vo.roleInfo;

public class roleDaoImpl {
	Connection conn = JDBC.getConnection();
	PreparedStatement ps;
	ResultSet rs;
	
	
	public List<roleInfo> selectrole(){
		String sql="select * from role";
		List<roleInfo> list = new ArrayList<roleInfo>();
		try {
			ps= conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				roleInfo role =new roleInfo();
				role.setR_id(rs.getInt("r_id"));
				role.setR_name(rs.getString("r_name"));
				role.setR_describe(rs.getString("r_describe"));
				role.setR_zhuangtai(rs.getString("r_zhuangtai"));
				list.add(role);
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}


	public int delete(List list) {

		int count = 0;

		
		
		for (int i = 0; i < list.size(); i++) {
			int rid = Integer.parseInt(list.get(i).toString().trim());
//			System.out.println("((((((((("+rid);
			String sql="delete from role where r_id=" +rid;
		try {
			ps = conn.prepareStatement(sql);
			count = ps.executeUpdate();
		} catch (Exception e) {

			}
		}
		return count;
	
	}


	public int update(roleInfo role, int rid) {

		String sql="update role set r_name=?,r_describe=?,r_zhuangtai=? where r_id=?";
		 int i=0;
		 try {
			 ps=conn.prepareStatement(sql);
			 
			 ps.setString(1, role.getR_name());
			 ps.setString(2,role.getR_describe());
			 ps.setString(3,role.getR_zhuangtai());
			 ps.setInt(4,rid);
			 ps.executeUpdate();
			 
			
		} catch (Exception e) {
			e.printStackTrace();
//			System.out.println(role.getR_name());
//			System.out.println(role.getR_describe());
	}
		 
		return i;
	}


	public int addrole(roleInfo role) {
		//System.out.println("in addrole......");
//		String sql="insert into role(r_id,r_name,r_describe,r_zhuangtai)values ("+role.getR_id()+",'"+role.getR_name()+"','"+role.getR_describe()+"','"+role.getR_zhuangtai()+"' )";
//		System.out.println(sql);
//		int i=0;
//		try {
//			Statement stm=conn.createStatement();
//			i=stm.executeUpdate(sql);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
	
		String sql="insert into role(r_name,r_describe,r_zhuangtai) values(?,?,?)";
		int i = 0;                                                    
		try {
			ps=conn.prepareStatement(sql);
		//	System.out.println("test////"+ps);
			ps.setInt(1,role.getR_id());
			ps.setString(1,role.getR_name());
			ps.setString(2,role.getR_describe());
			ps.setString(3,role.getR_zhuangtai());
//			ps.setInt(1,700);
//			ps.setString(2,"sss");
//			ps.setString(3,"sssss");
//			ps.setString(4,"sssss");
			i = ps.executeUpdate();
			
	}
		catch (Exception e) {
			e.printStackTrace();
		}
	return i;
	}
	
	public static void main(String[] args) {
		roleInfo role=new roleInfo();
		role.setR_id(120);
		role.setR_name("ssss");
		role.setR_zhuangtai("ssss");
		int i=new roleDaoImpl().addrole(role);
		System.out.println("the result..."+i);
	}
		
}
