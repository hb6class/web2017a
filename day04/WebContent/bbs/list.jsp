<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../template/header.jspf" %>
<%@ include file="../template/menu.jspf" %>
<%
	String sql = "select idx,sub,wid,cnt from lec_bbs order by idx desc";
	ArrayList list=selectAll(sql);
%>
	<h1>�Խ��� ���</h1>
	<table width="80%" align="center" border="1" cellspacing="0" >
		<tr>
			<th width="80">�۹�ȣ</th>
			<th>����</th>
			<th width="120">�۾���</th>
			<th width="80">��ȸ��</th>
		</tr>
		<%
		for(int i=0; i<list.size(); i++) {
			HashMap map=(HashMap)list.get(i);
		%>
		<tr>
			<td><%=map.get("idx") %></td>
			<td><%=map.get("sub") %></td>
			<td><%=map.get("wid") %></td>
			<td><%=map.get("cnt") %></td>
		</tr>
		<%} %>
	</table>
<%@ include file="../template/footer.jspf" %>
</body>
</html>