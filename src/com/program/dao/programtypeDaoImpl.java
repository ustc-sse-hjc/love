package com.program.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.program.vo.programtypeInfo;
import com.util.JDBC;
public class programtypeDaoImpl  {
			Connection conn = JDBC.getConnection();
			PreparedStatement ps;
			ResultSet rs;
			
			public List<programtypeInfo> getalltype() {	
				String sql="select *from programtype order by pt_id";
				List list=new ArrayList<programtypeInfo>();
				try {
					ps= conn.prepareStatement(sql);
					rs=ps.executeQuery();
					while(rs.next()){
						programtypeInfo ptype=new programtypeInfo();
						ptype.setPt_id(rs.getInt("pt_id"));
						ptype.setPt_name(rs.getString("pt_name"));
			 
						list.add(ptype);
						
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			return list;
			
		}
			

				
}
