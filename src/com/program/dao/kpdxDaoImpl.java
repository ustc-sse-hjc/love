package com.program.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.vo.jigouInfovo;
import com.vo.userInfo;
import com.util.JDBC;
public class kpdxDaoImpl {
	Connection conn = JDBC.getConnection();
	PreparedStatement ps;
	ResultSet rs;

	public List<userInfo> selectAll() {
		String sql="select * from user where k_pd=2";
		List<userInfo> list = new ArrayList<userInfo>();
		try {
			ps= conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				userInfo kpdx=new userInfo();
				kpdx.setU_name(rs.getString("u_name"));
				kpdx.setO_name(rs.getString("o_name"));
				kpdx.setU_zhuangtai(rs.getString("u_zhuangtai"));
				kpdx.setU_id(rs.getInt("u_id"));
				kpdx.setU_sex(rs.getString("u_sex"));
				list.add(kpdx);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public List<jigouInfovo> selectjigou(){
		String sql="select * from jigou where o_pd=2";
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
				list.add(jigou);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public List<userInfo> select() {
		String sql="select * from user where k_pd=1";
		List<userInfo> list = new ArrayList<userInfo>();
		try {
			ps= conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				userInfo kpdx=new userInfo();
				kpdx.setU_name(rs.getString("u_name"));
				kpdx.setO_name(rs.getString("o_name"));
				kpdx.setU_zhuangtai(rs.getString("u_zhuangtai"));
				kpdx.setU_id(rs.getInt("u_id"));
				kpdx.setU_sex(rs.getString("u_sex"));
				list.add(kpdx);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public List<jigouInfovo> selectjigou2(){
		String sql="select * from jigou where o_pd=1";
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
				list.add(jigou);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int delete(List list) {
		int count = 0;
		for (int i = 0; i < list.size(); i++) {
			int uid = Integer.parseInt((String) list.get(i).toString().trim());
			String sql="update user set k_pd=1 where u_id=" +uid;
		try {
			ps = conn.prepareStatement(sql);
			count = ps.executeUpdate();
		} catch (Exception e) {
			
		}
		}
		return count;
	}
	
	public int deletejigou(List list) {
		int count = 0;
		for (int i = 0; i < list.size(); i++) {
			int uid = Integer.parseInt((String) list.get(i).toString().trim());
			String sql="update jigou set o_pd=1 where o_id=" +uid;
		try {
			ps = conn.prepareStatement(sql);
			count = ps.executeUpdate();
		} catch (Exception e) {
			
		}
		}
		return count;
	}
	
	public int add(List list) {
		int count = 0;
		for (int i = 0; i < list.size(); i++) {
			int uid = Integer.parseInt((String) list.get(i).toString().trim());
			String sql="update user set k_pd=2 where u_id=" +uid;
		try {
			ps = conn.prepareStatement(sql);
			count = ps.executeUpdate();
		} catch (Exception e) {
			
		}
		}
		return count;
	}
	
	public int addjigou(List list) {
		int count = 0;
		for (int i = 0; i < list.size(); i++) {
			int uid = Integer.parseInt((String) list.get(i).toString().trim());
			String sql="update jigou set o_pd=2 where o_id=" +uid;
		try {
			ps = conn.prepareStatement(sql);
			count = ps.executeUpdate();
		} catch (Exception e) {
			
		}
		}
		return count;
	}
	
}
