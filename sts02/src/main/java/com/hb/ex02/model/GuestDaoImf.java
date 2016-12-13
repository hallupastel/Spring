package com.hb.ex02.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

public class GuestDaoImf {
	private RowMapper rowMapper;
	private JdbcTemplate jdbcTemplate;
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	public GuestDaoImf() {
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
	
	public List listAll() {
		String sql ="SELECT * FROM GUEST";
		return jdbcTemplate.query(sql, rowMapper);
	}

	public void insertOne(GuestVo bean) {
		// TODO Auto-generated method stub
		
	}

	public GuestVo selectOne(int sabun) {
		String sql="SELECT * FROM GUEST WHERE SABUN=?";
		return jdbcTemplate.queryForObject(sql, rowMapper,sabun);
	}
}












