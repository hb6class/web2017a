package com.hb.model;

import static org.junit.Assert.*;

import java.sql.SQLException;

import org.apache.log4j.Logger;
import org.junit.Test;


public class Guest04DaoTest {
	Logger log = Logger.getLogger("com.hb.model.Guest04DaoTest");

	@Test
	public void testSelectAll() throws ClassNotFoundException, SQLException{
		Guest04Dao dao = new Guest04Dao();
		assertNotNull(dao.selectAll());
		assertTrue(dao.selectAll().size()>0);
//		assertSame(dao.selectAll().size(), 5);
		
//		log.debug("���� �޽���");
//		log.info("���� �޽���");
//		log.warn("���� �޽���");
//		log.error("���� �޽���");
//		log.fatal("�׻� �޽���");
	}
	
	@Test
	public void testSelectOne() throws ClassNotFoundException, SQLException{
		Guest04Dao dao = new Guest04Dao();
		Guest04DTO bean= dao.selectOne(1000);
		assertNotNull(bean);
//		assertEquals(bean.getName(),"user01");
//		assertEquals(bean.getPay(),1111);
		Guest04DTO bean2=new Guest04DTO(1000, "user01", "�������", bean.getNalja(), 1111);
		assertEquals(bean2,bean);
		
	}

}



