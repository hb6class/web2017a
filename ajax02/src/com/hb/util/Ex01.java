package com.hb.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mydata01.xml")
public class Ex01 extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		
		response.setContentType("text/xml; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		out.print("<data>");
			out.print("<user>");
				out.print("<id>");
					out.print(id);
				out.print("</id>");
				out.print("<password>");
					out.print(pw);
				out.print("</password>");
				out.print("<name>");
					out.print("°ü¸®ÀÚ");
				out.print("</name>");
			out.print("</user>");
		out.print("</data>");
		
		out.close();
	}

}
