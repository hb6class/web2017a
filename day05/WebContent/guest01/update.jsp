<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page errorPage="../err.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String param1=request.getParameter("sabun");
		String param2=request.getParameter("name");
		String param3=request.getParameter("pay");
		
		int sabun=Integer.parseInt(param1);
		String name=null;
		int pay=0;
		if(param2!=null){
			name=param2.trim();
		}
		if(param3!=null){
			pay=Integer.parseInt(param3.trim());
		}
	%>
</body>
</html>









