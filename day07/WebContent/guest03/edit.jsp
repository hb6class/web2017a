<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="bean" class="com.hb.dto.Guest03Bean" scope="application"></jsp:useBean>
	<form action="update.jsp" method="post">
	<table width="80%" border="1" cellspacing="0">
		<tr>
			<td>���</td>
			<td><input type="text" name="sabun" value="<%=bean.getSabun() %>" readonly="readonly"> </td>
		</tr>
		<tr>
			<td>�̸�</td>
			<td><input type="text" name="name" value="<%=bean.getName()%>"></td>
		</tr>
		<tr>
			<td>��¥</td>
			<td><input type="text" name="nalja" value="<%=bean.getNalja() %>" disabled="disabled"></td>
		</tr>
		<tr>
			<td>�ݾ�</td>
			<td><input type="text" name="pay" value="<%=bean.getPay()%>"></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="����">
				<input type="reset" value="���">
				<input type="button" value="����" 
				onclick="javascript:history.back();">				
			</td>
		</tr>
	</table>
	</form>
</body>
</html>