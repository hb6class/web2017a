<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*,com.hb.util.MyOracle, com.hb.dto.Guest03Bean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%!
	private Connection conn;
	private PreparedStatement pstmt;
%>
<body>
	<jsp:useBean id="bean" class="com.hb.dto.Guest03Bean"></jsp:useBean>
	<jsp:setProperty property="name" name="bean"/>
	<jsp:setProperty property="pay" name="bean"/>
<%
	String sql="insert into guest03 values(guest03_seq.nextval,?,sysdate,?)";
	int result=0;
	try{
		conn=MyOracle.getConnection();
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, bean.getName());
		pstmt.setInt(2, bean.getPay());
		result=pstmt.executeUpdate();
	}finally{
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
	}
	if(result>0){
		out.println("<h1>�Է¼���</h1>");
	}else{
		out.println("<h1>�Է½���</h1>");	
	}
%>
	
</body>
</html>






