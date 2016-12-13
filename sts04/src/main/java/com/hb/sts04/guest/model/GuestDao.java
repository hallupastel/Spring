package com.hb.sts04.guest.model;

import java.util.List;

public interface GuestDao {

	List selectAll();
	GuestVo selectOne(int sabun);
	void insertOne(GuestVo bean);
	void updateOne(GuestVo bean);
	void deleteOne(int sabun);
}
