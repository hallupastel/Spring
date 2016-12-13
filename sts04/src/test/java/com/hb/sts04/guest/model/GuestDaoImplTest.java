package com.hb.sts04.guest.model;

import static org.junit.Assert.*;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.BeforeClass;
import org.junit.Test;

public class GuestDaoImplTest {
	
	
	private static SqlSession session;

	@BeforeClass
	public static void TestBefore() throws IOException {
		String resource = "mybatis-config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		session = sqlSessionFactory.openSession();
	}

	@Test
	public void testSelectAll() {
//		assertNotNull(session);
		List<GuestVo> list=session.selectList("guest.selectAll");
		assertNotNull(list);
		for(GuestVo bean:list){
			System.out.println(bean);
		}
	}

}
