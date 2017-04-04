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
	<h1>로그인</h1>
	<form action="result.jsp" method="post">
		<p>
			<label>id</label><input type="text" name="id">
		</p>
		<p>
			<label>pw</label><input type="password" name="pw">
		</p>
		<p>
			<input type="submit" value="로그인">
		</p>
	</form>
	<%@ include file="../template/footer.jspf" %>
</body>
</html>





