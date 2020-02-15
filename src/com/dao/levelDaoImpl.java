package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.util.JDBC;
import com.vo.levelInfo;
import com.vo.roleInfo;
 
public class levelDaoImpl {
	Connection conn = JDBC.getConnection();
	PreparedStatement ps;
	ResultSet rs;
public List<levelInfo> selectlevel(){
		String sql="select * from level";
		List<levelInfo> list = new ArrayList<levelInfo>();
		try {
			ps= conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				levelInfo level =new levelInfo();
				level.setL_id(rs.getInt("l_id"));
				level.setL_name(rs.getString("l_name"));
				level.setL_mix(rs.getInt("l_mix"));
				level.setL_max(rs.getInt("l_max"));
				level.setL_zhuangtai(rs.getString("l_zhuangtai"));
				list.add(level);
	 
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	return list;
}
	public int addlevel(levelInfo level) {
		String sql="insert into level(l_name,l_mix,l_max,l_zhuangtai) values(?,?,?,?)";
		System.out.println("rrrr");
		int i = 0;    
		try {
		    ps = conn.prepareStatement(sql);
		    ps.setString(1,level.getL_name());
			ps.setInt(2,level.getL_mix());
			ps.setInt(3,level.getL_max());
			ps.setString(4,level.getL_zhuangtai());
			i = ps.executeUpdate();
			
	}
		catch (Exception e) {
			e.printStackTrace();
		}return i;
	}
	public int update(levelInfo level, int lid) {
 
			String sql="update level set l_name=?,l_mix=?,l_max=?,l_zhuangtai=? where l_id=?";
			 int i=0;
			 try {
				 ps=conn.prepareStatement(sql);
				 ps.setString(1,level.getL_name());
				 ps.setInt(2,level.getL_mix());
				 ps.setInt(3,level.getL_max());
				 ps.setString(4,level.getL_zhuangtai());
				 ps.setInt(5,lid);
				 
                 ps.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
 
		}
			 
			return i;
		}
	public int delete(List list) {
		int count = 0;
		for (int i = 0; i < list.size(); i++) {
			
		
		int lid = (Integer) list.get(i);
		
		String sql="delete from level where l_id=" +lid;
		System.out.println("aaaaa");
	try 
		{
		ps = conn.prepareStatement(sql);
		count = ps.executeUpdate();
		count++;
	} catch (Exception e) {
		e.printStackTrace();
	}

		}
		
		return count;
	}
	
}