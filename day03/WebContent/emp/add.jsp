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
	String rootPath=request.getContextPath();
%>
	<table width="100%">
		<!-- header -->
		<tr>
			<td colspan="5">
				<a href="<%=rootPath %>/">
					<img alt="logo" src="../imgs/logo2.jpg">
				</a>
			</td>
			<td colspan="2">
				<a href="#">login</a> / <a href="#">join</a>
			</td>
		</tr>
		<!-- header end -->
		<!-- menu -->
		<tr>
			<td bgcolor="#ffdddd">&nbsp;</td>
			<td width="10%" align="center" bgcolor="#ffaaaa"><a href="<%=rootPath %>/intro/page1.jsp">회사소개</a></td>
			<td bgcolor="#ffdddd">&nbsp;</td>
			<td width="10%" align="center" bgcolor="#ffaaaa"><a href="<%=rootPath %>/emp/list.jsp">사원관리</a></td>
			<td bgcolor="#ffdddd">&nbsp;</td>
			<td width="10%" align="center" bgcolor="#ffaaaa"><a href="<%=rootPath %>/login/login.jsp">login</a></td>
			<td bgcolor="#ffdddd">&nbsp;</td>
		</tr>
		<!-- menu end -->
		<!-- content -->
		<tr>
			<td colspan="7" height="300" align="center">
				<h1>신규등록</h1>
				<form action="insert.jsp">
				<label>이름</label>
				<input type="text" name="name">
				<input type="submit" value="등록">
				</form>
			</td>
		</tr>
		<!-- content end -->
		<!-- footer -->
		<tr>
			<td colspan="7">
			<p>(주)한빛이엔아이 ｜ 사업자등록번호 : 220-85-43667 ｜ 통신판매신고 : 마포 제 0358호</p>
<p>한빛ENI : 02-707-1480 / (121-854) 서울시 마포구 신수동 63-14 구프라자 3층 / 대표이사 : 염기호</p>

<p>Copyright (c) 2015 한빛교육센터 All rights reserved.</p>
			</td>
		</tr>
		<!-- footer end -->
	</table>
</body>
</html>