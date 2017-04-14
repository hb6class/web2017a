package com.hb.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.hb.util.MyOracle;

public class Guest01Dao {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public ArrayList<Guest01Dto> selectAll() {
		String sql="SELECT * FROM GUEST01";
		ArrayList<Guest01Dto> list = new ArrayList<Guest01Dto>();
		try{
			conn=MyOracle.getConnection();
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				Guest01Dto bean = new Guest01Dto();
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setPay(rs.getInt("pay"));
				list.add(bean);
			}
		}catch(Exception e){
			
		}finally{
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	
		
		return list;
	}// selectAll end
	
	public void insertOne(int sabun,String name,int pay) {
		String sql="INSERT INTO GUEST01 (SABUN,NAME,NALJA,PAY) ";
		sql+=" VALUES (?,?,SYSDATE,?)";
		try{
			conn=MyOracle.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, sabun);
			pstmt.setString(2, name);
			pstmt.setInt(3, pay);
			pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}// insertOne end
	
	public Guest01Dto selectOne(int sabun) {
		String sql="select * from guest01 where sabun=?";
		Guest01Dto bean = new Guest01Dto();
		try{
			conn=MyOracle.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, sabun);
			rs=pstmt.executeQuery();
			if(rs.next()){
				bean.setSabun(rs.getInt("sabun"));
				bean.setName(rs.getString("name"));
				bean.setNalja(rs.getDate("nalja"));
				bean.setPay(rs.getInt("pay"));
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return bean;
	}
	
	public void updateOne(int sabun,String name,int pay) {
		String sql="UPDATE GUEST01 SET NAME=?,PAY=? WHERE SABUN=?";
		try{
			conn=MyOracle.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(2, pay);
			pstmt.setInt(3, sabun);
			pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}









