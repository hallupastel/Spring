package com.hb.ex02.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcOperations;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

public class GuestDaoImp implements GuestDao {
	
	private JdbcOperations jdbcOperations;
	private RowMapper<GuestVo> rowMapper;
	public void setJdbcOperations(JdbcOperations jdbcOperations) {
		this.jdbcOperations = jdbcOperations;
	}
	
	public GuestDaoImp() {
		rowMapper= new RowMapper<GuestVo>() {

			@Override
			public GuestVo mapRow(ResultSet rs, int rowNum) throws SQLException {
				GuestVo bean= new GuestVo(
						rs.getInt("sabun")
						, rs.getString("name")
						, rs.getDate("nalja")
						, rs.getInt("pay"));
				return bean;
			}
		};
	}
	
	@Override
	public List listAll() {
		String sql="SELECT * FROM GUEST";
		return jdbcOperations.query(sql, rowMapper);
	}

	@Override
	public void insertOne(GuestVo bean) {
		String sql="insert into guest values (?,?,sysdate,?)";
		Object[] obj={bean.getSabun(),bean.getName(),bean.getPay()};
		jdbcOperations.update(sql, obj);
	}

	@Override
	public GuestVo selectOne(int sabun) {
		String sql="select * from guest where sabun=?";
		Object[] obj={sabun};
		return (GuestVo) jdbcOperations.queryForObject(sql, obj,rowMapper);
	}

	@Override
	public void updateOne(GuestVo bean) {
		String sql="update guest set name=?,pay=? where sabun=?";
		Object[] obj= {bean.getName(),bean.getPay(),bean.getSabun()};
		jdbcOperations.update(sql, obj);
	}

	@Override
	public void deleteOne(int sabun) {
		// TODO Auto-generated method stub
		
	}

}
