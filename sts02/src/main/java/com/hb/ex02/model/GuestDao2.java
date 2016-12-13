package com.hb.ex02.model;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

public class GuestDao2 {
	private DataSource dataSource;
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public List<GuestVo> listAll() throws ClassNotFoundException, SQLException {
		String sql="SELECT * FROM GUEST";
		List<GuestVo> list=null;
		try{
			conn=dataSource.getConnection();
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			list=new ArrayList<GuestVo>();
			while(rs.next()){
				list.add(new GuestVo(
						rs.getInt("sabun")
						,rs.getString("name")
						,rs.getDate("nalja")
						,rs.getInt("pay")
						));
			}
		}finally{
			if(rs!=null)rs.close();
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
		
		return list;
	}

	public void insertOne(GuestVo bean) throws SQLException {
		String sql= "INSERT INTO GUEST VALUES (?,?,SYSDATE,?)";
		try{
			conn=dataSource.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, bean.getSabun());
			pstmt.setString(2, bean.getName());
			pstmt.setInt(3, bean.getPay());
			pstmt.executeUpdate();
		}finally{
			if(pstmt!=null)pstmt.close();
			if(conn!=null)conn.close();
		}
	}

	public GuestVo selectOne(int sabun) {
		
		return null;
	}
}
