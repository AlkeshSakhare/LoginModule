package com.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String uname = request.getParameter("uname");
		String upass = request.getParameter("upassword");
		if (uname.equals("alkesh") && upass.equals("sakhare")) {
			HttpSession session = request.getSession();
			session.setAttribute("uname", uname);
			response.sendRedirect("home.jsp");
		} else {
			response.sendRedirect("login.jsp");
		}

	}

}
