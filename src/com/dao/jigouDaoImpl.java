package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBC;
import com.vo.jigouInfovo;


public class jigouDaoImpl{
	Connection conn = JDBC.getConnection();
	PreparedStatement ps;
	ResultSet rs;

	public int addjigou(jigouInfovo jigou) {
		String sql = "insert into jigou(o_name,o_lx,o_zn,o_zt,o_pd) values(?,?,?,?,1)";
		int i =0;
		try {
			ps = conn.prepareStatement(sql);
			ps.setString(1,jigou.getO_name());
			ps.setString(2,jigou.getO_lx());
			ps.setString(3,jigou.getO_zn());
			ps.setString(4,jigou.getO_zt());
			i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return i;
	}
public List<jigouInfovo> selectjigou() {
	String sql="select * from jigou";
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
		String sql="delete from jigou where o_id=" +uid;
	try {
		ps = conn.prepareStatement(sql);
		count = ps.executeUpdate();
	} catch (Exception e) {
		
	}
	}
	return count;
}


public int update(jigouInfovo jigou, int oid) {
	String sql="update jigou set o_name=?,o_lx=?,o_zn=?,o_zt=? where o_id=?";
	 int i=0;
	 try {
		 ps=conn.prepareStatement(sql);
		 ps.setString(1, jigou.getO_name());
		 ps.setString(2,jigou.getO_lx());
		 ps.setString(3,jigou.getO_zn());
		 ps.setString(4, jigou.getO_zt());
		 ps.setInt(5,oid);
		 i=ps.executeUpdate();
		 
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	 
	return i;
}
 

}
