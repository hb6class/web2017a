<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%!	// ����� Ŭ���� ���� ���θ޼ҵ� ��
	// �ɹ��ʵ�,�޼ҵ�
	// ������ �Ұ�
	public String func01(int a, int b){
		String msg=a+"x"+b+"="+(a*b);
		return msg;
	}
%>
<body>
<h1>������3</h1>
<% // ���θ޼ҵ� ���� %>
<table>
	<%for(int j=1; j<10; j++){ %>
	<tr>
		<%for(int i=2; i<10; i++){ %>
		<td><%=func01(i,j) %></td>
		<%} %>
	</tr>
	<%} %>
</table>
</body>
</html>