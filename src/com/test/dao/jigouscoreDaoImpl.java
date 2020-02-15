package com.test.dao;

	import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.util.ArrayList;
	import java.util.List;

	import com.util.JDBC;
	import com.vo.voteInfo;

	public class jigouscoreDaoImpl  {
		Connection conn = JDBC.getConnection();
		PreparedStatement ps;
		ResultSet rs;
 
		public List<voteInfo> vote(){
			String sql="select * from vote where pt_id=1 order by v_type";
			List<voteInfo> list = new ArrayList<voteInfo>();
			try {
				ps= conn.prepareStatement(sql);
				rs=ps.executeQuery();
				while(rs.next()){
					voteInfo vote =new voteInfo();
					vote.setV_id(rs.getInt("v_id"));
                    vote.setV_name(rs.getString("v_name"));
					vote.setV_type(rs.getString("v_type"));
			 
					list.add(vote);
				}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
		
		
}
