package com.hb.am;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Ex05 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("커스텀 확장자");
		resp.setContentType("text/html; charset=UTF-8");
//		resp.setContentType("text/xml; charset=UTF-8");
//		resp.setContentType("text/javascript");
//		resp.setContentType("text/plain; charset=UTF-8");
//		resp.setContentType("image/gif");
//		resp.setContentType("image/jpeg");
//		resp.setContentType("video/mp4");
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out  = resp.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<meta http-equiv=\"Content-Type\" content=\"text/plain; charset=UTF-8\">");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>html</h1>");
		out.println("</body>");
		out.println("</html>");
		
		out.close();
	}
}
