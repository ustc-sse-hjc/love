package com.test.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.program.vo.cycleInfo;
import com.util.JDBC;

public class stageDao {
	Connection conn = JDBC.getConnection();
	PreparedStatement ps;
	ResultSet rs;
	
	
	public List<cycleInfo> selecstage(int pid){
		//System.out.println("胡情情呀"+pid);
		String sql="select * from stage where ps_zhuangtai=1 and pid=?";
		List<cycleInfo> list = new ArrayList<cycleInfo>();
		try {
			ps= conn.prepareStatement(sql);
			ps.setInt(1, pid);
			rs=ps.executeQuery();
			while(rs.next()){
				//System.out.println("胡情情呀");
				cycleInfo stage =new cycleInfo();
				stage.setPs_id(rs.getInt("ps_id"));
				stage.setPs_name(rs.getString("ps_name"));
				
				list.add(stage);
				
				
				
			}
	} catch (Exception e) {
		e.printStackTrace();
	}
	System.out.println(list);
	return list;
}

}
