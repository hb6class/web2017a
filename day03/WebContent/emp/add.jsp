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
			<td width="10%" align="center" bgcolor="#ffaaaa"><a href="<%=rootPath %>/intro/page1.jsp">ȸ��Ұ�</a></td>
			<td bgcolor="#ffdddd">&nbsp;</td>
			<td width="10%" align="center" bgcolor="#ffaaaa"><a href="<%=rootPath %>/emp/list.jsp">�������</a></td>
			<td bgcolor="#ffdddd">&nbsp;</td>
			<td width="10%" align="center" bgcolor="#ffaaaa"><a href="<%=rootPath %>/login/login.jsp">login</a></td>
			<td bgcolor="#ffdddd">&nbsp;</td>
		</tr>
		<!-- menu end -->
		<!-- content -->
		<tr>
			<td colspan="7" height="300" align="center">
				<h1>�űԵ��</h1>
				<form action="insert.jsp">
				<label>�̸�</label>
				<input type="text" name="name">
				<input type="submit" value="���">
				</form>
			</td>
		</tr>
		<!-- content end -->
		<!-- footer -->
		<tr>
			<td colspan="7">
			<p>(��)�Ѻ��̿����� �� ����ڵ�Ϲ�ȣ : 220-85-43667 �� ����ǸŽŰ� : ���� �� 0358ȣ</p>
<p>�Ѻ�ENI : 02-707-1480 / (121-854) ����� ������ �ż��� 63-14 �������� 3�� / ��ǥ�̻� : ����ȣ</p>

<p>Copyright (c) 2015 �Ѻ��������� All rights reserved.</p>
			</td>
		</tr>
		<!-- footer end -->
	</table>
</body>
</html>