<%@ page import="com.hb.dao.Guest01Dao" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("EUC-KR");//한글처리
		String name=request.getParameter("name");
		String st_pay=request.getParameter("pay");
		int pay=Integer.parseInt(st_pay);
		Guest01Dao dao = new Guest01Dao();
		dao.insertOne(name,pay);
		response.sendRedirect("list.jsp");
	%>
</body>
</html>