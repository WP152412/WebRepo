package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.JsonObject;

/**
 * Servlet implementation class SigninServlet
 */
@WebServlet(
		description = "For sign-in", 
		urlPatterns = { 
				"/BlogLoginServlet", 
				"/bloglogin"
		})
public class BlogLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BlogLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		System.out.printf("id : %s pwd : %s\n", id, pwd);

		response.setContentType("application/json;charset=utf-8");
		
		
		
		PrintWriter out = response.getWriter();
		if("test@naver.com".equals(id)) {
			HttpSession session = request.getSession();
			session.setAttribute("UserID", id);
			session.setAttribute("UserName", "홍길동");
			JsonObject json = new JsonObject();
			json.addProperty("UserID", id);
			json.addProperty("UserName", "홍길동");
			json.addProperty("msg", "success");
			System.out.println(json);
			out.write(json.toString());
		} else {	
			JsonObject json = new JsonObject();
			json.addProperty("msg", "error");
			out.write(json.toString());
		}
		out.close();
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/myblog2/signin2.jsp");
		rd.forward(request, response);
		
		/*
		
		PrintWriter out = response.getWriter();
		
		JsonObject json = new JsonObject();
		json.addProperty("id", id);
		System.out.println(json);
		out.write(json.toString());
		out.close();
		*/
	}

}
