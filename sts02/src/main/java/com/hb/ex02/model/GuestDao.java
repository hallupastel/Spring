package com.hb.ex02.model;

import java.util.List;

public interface GuestDao {

	List listAll();
	void insertOne(GuestVo bean);
	GuestVo selectOne(int sabun);
	void updateOne(GuestVo bean);
	void deleteOne(int sabun);
}
