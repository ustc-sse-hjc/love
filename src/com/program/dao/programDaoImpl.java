package com.program.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.program.vo.programInfo;
import com.util.JDBC;

public class programDaoImpl  {
		Connection conn = JDBC.getConnection();
		PreparedStatement ps;
		ResultSet rs;
		
		public List<programInfo> selectprogram(int a) {	
			
			
			String sql="select *from program where ptype=?";
			List list=new ArrayList<programInfo>();
			try {
				ps= conn.prepareStatement(sql);
				ps.setInt(1, a);
				rs=ps.executeQuery();
				while(rs.next()){
					programInfo program=new programInfo();
					program.setPid(rs.getInt("pid"));
					program.setPname(rs.getString("pname"));
					program.setPbegin(rs.getString("pbegin"));
					program.setPclose(rs.getString("pclose"));
					program.setPmaker(rs.getString("pmaker"));
					program.setPzhuangtai(rs.getInt("pzhuangtai"));
				
					list.add(program);
					
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		return list;
		
	}
		
		
		
public List<programInfo> selectopenprogram() {	//显示已开启方案
			
			
			String sql="select *from program where pzhuangtai=1";
			List list=new ArrayList<programInfo>();
			try {
				ps= conn.prepareStatement(sql);
				
				rs=ps.executeQuery();
				while(rs.next()){
					programInfo program=new programInfo();
					program.setPid(rs.getInt("pid"));
					program.setPname(rs.getString("pname"));
					program.setPbegin(rs.getString("pbegin"));
					program.setPclose(rs.getString("pclose"));
					program.setPmaker(rs.getString("pmaker"));
					program.setPzhuangtai(rs.getInt("pzhuangtai"));
				
					list.add(program);
					
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		return list;

}

		public int addprogram(programInfo program) {
//			System.out.println(program.getPid());
//			System.out.println("22222222222222222222");
//		System.out.println(program.getPtype());
			String sql="insert into program(pid,pname,pbegin,pclose,pmaker,pzhuangtai,ptype) values(?,?,?,?,?,?,?)";
			int i = 0;                                                    
			try {
				ps=conn.prepareStatement(sql);
				ps.setInt(1, program.getPid());
				ps.setString(2, program.getPname());
				ps.setString(3, program.getPbegin());
				ps.setString(4, program.getPclose());
				ps.setString(5,program.getPmaker());
				ps.setInt(6, program.getPzhuangtai());
				ps.setInt(7, program.getPtype());
				i = ps.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();				
			}
				
			return i;
			
		}
		
		
		
		
		
		public int openprogram(int pid,int pzhuangtai) {//开启方案
		System.out.println("0000"+pid);
		System.out.println("22222222222222222222");
//		System.out.println(program.getPtype());
			int i = 0;  //未开启
			String sql=null;
			if(pzhuangtai==0)
			{sql="update  program set pzhuangtai=1 where pid=?";
			                                                  
			try {
				ps=conn.prepareStatement(sql);
				ps.setInt(1, pid);
			
				i = ps.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();				
			}
				
			}
			
			
			
			
			
			if(pzhuangtai==1)
			{ sql="update  program set pzhuangtai=0 where pid=?";//开启
			                                                    
			try {
				ps=conn.prepareStatement(sql);
				ps.setInt(1, pid);
			
				i = ps.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();				
			}
				
			}
			
			
			
			
		return i;
		
		
		
}
}
			
