package com.hb.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;

import com.hb.util.MyDB;

public class Guest04Dao {
	Logger log = Logger.getLogger("com.hb.model.Guest04Dao");
	private String driver;
	private String url;
	private String user;
	private String password;
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public Guest04Dao() {
		driver="oracle.jdbc.driver.OracleDriver";
		url="jdbc:oracle:thin:@127.0.0.1:1521:xe";
		user="scott";
		password="tiger";
	}

	public List<Guest04DTO> selectAll() throws ClassNotFoundException, SQLException{
		String sql="SELECT * FROM GUEST04";
		List<Guest04DTO> list=new ArrayList<Guest04DTO>();
		try{
		conn=MyDB.getConnection(driver, url, user, password);
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		while(rs.next()){
			Guest04DTO dto = new Guest04DTO(
					rs.getInt("sabun")
					,rs.getString("name")
					,rs.getString("sub")
					,rs.getDate("nalja")
					,rs.getInt("pay")
					);	
			
			list.add(dto);
//			list.add(new Guest04DTO(
//					rs.getInt("sabun")
//					,rs.getString("name")
//					,rs.getString("sub")
//					,rs.getDate("nalja")
//					,rs.getInt("pay")
//					));
			log.debug(dto);
			System.out.println(dto);
		}
		
		}finally{
			closeAll();
		}
		return list;
	}

	private void closeAll() throws SQLException {
		if(rs!=null)rs.close();
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
	}
}
