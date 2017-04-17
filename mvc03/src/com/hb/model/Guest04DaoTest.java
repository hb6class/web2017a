package com.hb.model;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.apache.log4j.Logger;
import org.junit.Test;


public class Guest04DaoTest {
	Logger log = Logger.getLogger("com.hb.model.Guest04DaoTest");

	@Test
	public void testSelectAll() throws ClassNotFoundException, SQLException{
//		Guest04Dao dao = new Guest04Dao();
//		assertNotNull(dao.selectAll());
////		assertTrue(dao.selectAll().size()>0);
//		assertSame(dao.selectAll().size(), 5);
		
		log.debug("개발 메시지");
		log.info("정보 메시지");
		log.warn("주의 메시지");
		log.error("에러 메시지");
		log.fatal("항상 메시지");
	}

}
