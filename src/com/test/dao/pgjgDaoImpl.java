package com.test.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBC;
import com.vo.jigouInfovo;
import com.vo.userInfo;

public class pgjgDaoImpl {
	Connection conn = JDBC.getConnection();
	PreparedStatement ps;
	ResultSet rs;
	
	public List<userInfo> selectAll() {
		String sql = "select * from user where k_pd=2 order by u_score desc";
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
				user.setU_score(rs.getInt("u_score"));
				list.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}


public List<jigouInfovo> selectjigou(){
	String sql="select * from jigou where o_pd=2 order by o_score desc";
	List<jigouInfovo> list = new ArrayList<jigouInfovo>();
	try {
		ps= conn.prepareStatement(sql);
		rs=ps.executeQuery();
		while(rs.next()){
			jigouInfovo jigou=new jigouInfovo();
			jigou.setO_id(rs.getInt("o_id"));
			jigou.setO_name(rs.getString("o_name"));
			jigou.setO_lx(rs.getString("o_lx"));
			jigou.setO_zn(rs.getString("o_zn"));
			jigou.setO_zt(rs.getString("o_zt"));
			jigou.setO_score(rs.getInt("o_score"));
			 
			System.out.println("uuuuu汪汪汪"+jigou.getO_score());
			list.add(jigou);
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}

}
