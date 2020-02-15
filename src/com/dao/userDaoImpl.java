package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.util.JDBC;
import com.vo.userInfo;
public class userDaoImpl{
	Connection conn = JDBC.getConnection();
	PreparedStatement ps;
	ResultSet rs;
	
	public List<userInfo> selectAll() {
		String sql = "select * from user";
		List<userInfo> list = new ArrayList<userInfo>();
		try {
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				userInfo user = new userInfo();
				user.setU_id(rs.getInt("u_id"));
				user.setU_pwd(rs.getString("u_pwd"));
				user.setU_login(rs.getString("u_login"));
				user.setU_name(rs.getString("u_name"));
				user.setU_sex(rs.getString("u_sex"));
				user.setU_birth(rs.getString("u_birth"));
				user.setU_number(rs.getString("u_number"));
				user.setO_name(rs.getString("o_name"));
				user.setJ_name(rs.getString("j_name"));
				user.setU_power(rs.getInt("u_power"));
				user.setU_zhuangtai(rs.getString("u_zhuangtai"));
				list.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}
	public int update(userInfo user,int uid) {
		String sql =  " update user  set u_pwd=?,u_login=?,u_name=?,u_sex=?,u_birth=?,u_number=?," +
				"o_name=?,j_name=?,u_power=?,u_zhuangtai=? where u_id=?";
		int i =0;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1,user.getU_pwd());
			ps.setString(2,user.getU_login());
			ps.setString(3,user.getU_name());
			ps.setString(4,user.getU_sex());
			ps.setString(5,user.getU_birth());
			ps.setString(6,user.getU_number());
			ps.setString(7,user.getO_name());
			ps.setString(8,user.getJ_name());
			ps.setInt(9,user.getU_power());
			ps.setString(10,user.getU_zhuangtai());
			ps.setInt(11,uid);
		    i=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	
	public int adduser(userInfo user) {
		
		String sql="insert into user(u_pwd,u_login,u_name,u_sex,u_birth,u_number,o_name,j_name,u_power,u_zhuangtai,k_pd) values(?,?,?,?,?,?,?,?,?,?,1)";
		int i = 0;                                                    
		try {
			ps=conn.prepareStatement(sql);
	        ps.setString(1,user.getU_pwd());
			ps.setString(2,user.getU_login());
			ps.setString(3,user.getU_name());
			ps.setString(4,user.getU_sex());
			ps.setString(5,user.getU_birth());
			ps.setString(6,user.getU_number());
			ps.setString(7,user.getO_name());
			ps.setString(8,user.getJ_name());
			ps.setInt(9,user.getU_power());
			ps.setString(10,user.getU_zhuangtai());
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
			int uid = Integer.parseInt(list.get(i).toString().trim());
			System.out.println("((((((((("+uid);
			String sql="delete from user where u_id=" +uid;
		try {
			ps = conn.prepareStatement(sql);
			count = ps.executeUpdate();
		} catch (Exception e) {
			}
		}
		return count;
	
	}
 
}

