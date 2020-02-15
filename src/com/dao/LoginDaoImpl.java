package com.dao;

import com.util.JDBC;
import com.vo.userInfo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDaoImpl {
 
		Connection conn = JDBC.getConnection();
		PreparedStatement ps;
		ResultSet rs;

		public userInfo login(String u_login, String u_pwd){
			String sql = "select * from user where u_login =?  and u_pwd = ?";
			userInfo user=new userInfo();
			try {
			
				ps=conn.prepareStatement(sql);
				ps.setString(1,u_login);
				ps.setString(2,u_pwd);//定义的
				rs=ps.executeQuery();
				while (rs.next()) {
					user.setU_id(rs.getInt("u_id"));
					user.setU_login(rs.getString("u_login"));
					user.setU_pwd(rs.getString("u_pwd"));
					user.setU_name(rs.getString("u_name"));
			
					user.setU_sex(rs.getString("u_sex"));
					user.setU_birth(rs.getString("u_birth")); 
					user.setU_number(rs.getString("u_number"));
					user.setU_power(rs.getInt("u_power"));
					user.setU_zhuangtai(rs.getString("u_zhuangtai"));
				  
			 
			 }
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return user;
		}

 
		

	}