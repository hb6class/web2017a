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
	<h1>�α��� ���</h1>
	<p>
		id:<%=request.getParameter("id") %>
	</p>
	<p>
		pw:<%=request.getParameter("pw") %>
	</p>
	<p>
		method:<%=request.getMethod() %>
	</p>
	<%@ include file="../template/footer.jspf" %>
</body>
</html>