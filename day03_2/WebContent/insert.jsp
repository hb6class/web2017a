<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page errorPage="err.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="template/header.jspf" %>
	<%@ include file="template/menu.jspf" %>
	<%
	String sub=request.getParameter("sub");
	String wid=request.getParameter("wid");
	String content=request.getParameter("content");
	
	System.out.println(sub);
	System.out.println(wid);
	System.out.println(content);
	
	String sql="insert into lec_bbs (idx,sub,name,content,nalja) ";
	sql+="values ()";
	try{
		//Class.forName(driver);
		
	}finally{
		
	}
	%>
	
	<%@ include file="template/footer.jspf" %>
</body>
</html>