<%@ page import="java.util.*" %>
<%@ page import="com.hb.dto.Guest01Bean" %>
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
	<%@ include file="../template/header.jspf" %>
	<%@ include file="../template/menu.jspf" %>
	<center>
	<h1>목록</h1>
	<table width="80%" border="1" cellspacing="0">
		<tr bgcolor="#cccccc">
			<th>사번</th>
			<th>이름</th>
			<th>날짜</th>
			<th>금액</th>
		</tr>
		<%
		String param1=request.getParameter("page");
		if(param1==null){
			param1="1";
		}
		int pg=Integer.parseInt(param1);
		
		Guest01Dao dao= new Guest01Dao();
		ArrayList<Guest01Bean> list=null; 
		list=dao.selectAll(pg);
		if(list!=null){
			for(int i=0; i<list.size(); i++){
				Guest01Bean bean=list.get(i);
		%>
		<tr>
			<td><a href="detail.jsp?idx=<%=bean.getSabun()%>"><%=bean.getSabun()%></a></td>
			<td><%=bean.getName() %></td>
			<td><%=bean.getNalja() %></td>
			<td><%=bean.getPay() %></td>
		</tr>
		<%
			}
		}
		%>
	</table>
	<p>
		<a href="list.jsp?page=1">[1]</a>
		<a href="list.jsp?page=2">[2]</a>
		<a href="list.jsp?page=3">[3]</a>
		<a href="list.jsp?page=4">[4]</a>
		<a href="list.jsp?page=5">[5]</a>
	</p>
	<p>
	
		<a href="add.jsp">입력</a>
	</p>
	</center>	
	<%@ include file="../template/footer.jspf" %>
</body>
</html>