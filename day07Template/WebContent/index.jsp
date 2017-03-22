<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%!

%>
<body>
<%
	// 사이트메쉬
	String ur=request.getParameter("template");
	String sabun=request.getParameter("sabun");
	String name=request.getParameter("name");
	String nalja=request.getParameter("nalja");
	String pay=request.getParameter("pay");
	if(ur==null){
		ur="main.jsp";
	}else if("list".equals(ur)){
		ur="guest/list.jsp";
	}else if("add".equals(ur)){
		ur="guest/add.jsp";
	}else if("insert".equals(ur)){
		ur="guest/insert.jsp";
	}
%>
	<table width="100%">
		<tr><!-- header -->
			<td>
				<img alt="logo" src="imgs/logo2.jpg">
			</td>
			<td>
				<form action="">
					<p>
						<label>id</label><input type="text" name="id">
						<label>pw</label><input type="password" name="pw">
						<input type="submit" value="로그인">
					</p>
				</form>
			</td>
		</tr>
		<tr bgcolor="red"><!-- menu -->
			<td colspan="2" align="center">
				<font size="6" color="#000000">
				<a href="/day07Template/">HOME</a>
				<a href="/day07Template/index.jsp?template=list">게시판</a>
				<a href="/day07Template/">menu1</a>
				<a href="/day07Template/">menu2</a>
				</font>				
			</td>
		</tr>
		<tr height="300">
			<td colspan="2">
			<!-- content -->
			<jsp:include page="<%=ur %>">
				<jsp:param value="<%=sabun %>" name="sabun"/>
				<jsp:param value="<%=name %>" name="name"/>
				<jsp:param value="<%=nalja %>" name="nalja"/>
				<jsp:param value="<%=pay %>" name="pay"/>
			</jsp:include>
			<!-- content end-->
			</td>
		</tr>
		<tr bgcolor="#cccccc"><!-- footer -->
			<td colspan="2">
			Copyright (c) 2017 한빛교육센터 All rights reserved.
			</td>
		</tr>
	</table>
</body>
</html>